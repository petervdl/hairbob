.class public Lcom/airbnb/android/adapters/PickWishListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PickWishListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/adapters/PickWishListAdapter$WishListViewHolder;,
        Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;
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


# static fields
.field private static final NUM_RECENT_WISHLSITS:I = 0x3

.field private static final NUM_SECTION_HEADERS:I = 0x2

.field private static final NUM_STATIC_ROWS:I = 0x6

.field private static final NUM_STATIC_ROWS_BEFORE_RECENT_LIST:I = 0x5

.field private static WL_PADDING:I


# instance fields
.field private mListingToAdd:Lcom/airbnb/android/models/Listing;

.field private mRecentWishLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Collection;",
            ">;"
        }
    .end annotation
.end field

.field private mTrackingPosition:Ljava/lang/String;

.field private mWishlistsAddedTo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Collection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/airbnb/android/models/Listing;Ljava/lang/String;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listingToAdd"    # Lcom/airbnb/android/models/Listing;
    .param p3, "trackingPosition"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-direct {p0, p1, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/airbnb/android/adapters/PickWishListAdapter;->mRecentWishLists:Ljava/util/List;

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/airbnb/android/adapters/PickWishListAdapter;->mWishlistsAddedTo:Ljava/util/List;

    .line 66
    iput-object p2, p0, Lcom/airbnb/android/adapters/PickWishListAdapter;->mListingToAdd:Lcom/airbnb/android/models/Listing;

    .line 67
    iput-object p3, p0, Lcom/airbnb/android/adapters/PickWishListAdapter;->mTrackingPosition:Ljava/lang/String;

    .line 68
    invoke-virtual {p0, v3}, Lcom/airbnb/android/adapters/PickWishListAdapter;->setNotifyOnChange(Z)V

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 70
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0b0062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/airbnb/android/adapters/PickWishListAdapter;->WL_PADDING:I

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/adapters/PickWishListAdapter;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/adapters/PickWishListAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/airbnb/android/adapters/PickWishListAdapter;->mTrackingPosition:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/adapters/PickWishListAdapter;)Lcom/airbnb/android/models/Listing;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/adapters/PickWishListAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/airbnb/android/adapters/PickWishListAdapter;->mListingToAdd:Lcom/airbnb/android/models/Listing;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/adapters/PickWishListAdapter;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/adapters/PickWishListAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/airbnb/android/adapters/PickWishListAdapter;->mWishlistsAddedTo:Ljava/util/List;

    return-object v0
.end method

.method private createViewHolder(Landroid/view/View;)Lcom/airbnb/android/adapters/PickWishListAdapter$WishListViewHolder;
    .registers 5
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 300
    new-instance v0, Lcom/airbnb/android/adapters/PickWishListAdapter$WishListViewHolder;

    invoke-direct {v0}, Lcom/airbnb/android/adapters/PickWishListAdapter$WishListViewHolder;-><init>()V

    .line 301
    .local v0, "viewHolder":Lcom/airbnb/android/adapters/PickWishListAdapter$WishListViewHolder;
    const v1, 0x7f08038a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/AirImageView;

    iput-object v1, v0, Lcom/airbnb/android/adapters/PickWishListAdapter$WishListViewHolder;->coverImageView:Lcom/airbnb/android/views/AirImageView;

    .line 302
    iget-object v1, v0, Lcom/airbnb/android/adapters/PickWishListAdapter$WishListViewHolder;->coverImageView:Lcom/airbnb/android/views/AirImageView;

    const v2, 0x7f0a001c

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/AirImageView;->setDefaultImageResId(I)V

    .line 303
    const v1, 0x7f08038b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/airbnb/android/adapters/PickWishListAdapter$WishListViewHolder;->addedCheckmark:Landroid/widget/ImageView;

    .line 304
    const v1, 0x7f08038d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/airbnb/android/adapters/PickWishListAdapter$WishListViewHolder;->title:Landroid/widget/TextView;

    .line 305
    const v1, 0x7f08038e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/airbnb/android/adapters/PickWishListAdapter$WishListViewHolder;->listingsCount:Landroid/widget/TextView;

    .line 306
    const v1, 0x7f08038f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/airbnb/android/adapters/PickWishListAdapter$WishListViewHolder;->divider:Landroid/view/View;

    .line 307
    const v1, 0x7f08038c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/airbnb/android/adapters/PickWishListAdapter$WishListViewHolder;->privacyIndicator:Landroid/widget/ImageView;

    .line 308
    return-object v0
.end method

.method private renderWishList(ILcom/airbnb/android/adapters/PickWishListAdapter$WishListViewHolder;)V
    .registers 20
    .param p1, "position"    # I
    .param p2, "viewHolder"    # Lcom/airbnb/android/adapters/PickWishListAdapter$WishListViewHolder;

    .prologue
    .line 179
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/airbnb/android/adapters/PickWishListAdapter;->mRecentWishLists:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v6

    .line 180
    .local v6, "numRecentWishLists":I
    add-int/lit8 v11, v6, 0x5

    move/from16 v0, p1

    if-ge v0, v11, :cond_ad

    .line 181
    add-int/lit8 v2, p1, -0x5

    .line 182
    .local v2, "index":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/airbnb/android/adapters/PickWishListAdapter;->mRecentWishLists:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/airbnb/android/models/Collection;

    .line 183
    .local v9, "wishlist":Lcom/airbnb/android/models/Collection;
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/airbnb/android/adapters/PickWishListAdapter$WishListViewHolder;->divider:Landroid/view/View;

    add-int/lit8 v11, v6, -0x1

    if-ne v2, v11, :cond_aa

    const/16 v11, 0x8

    :goto_24
    invoke-virtual {v12, v11}, Landroid/view/View;->setVisibility(I)V

    .line 192
    :goto_27
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/adapters/PickWishListAdapter;->mListingToAdd:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v11, v12}, Lcom/airbnb/android/AirbnbApi;->getAddedToWishListIds(Lcom/airbnb/android/models/Listing;)Ljava/util/Set;

    move-result-object v10

    .line 193
    .local v10, "wishlistIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    if-eqz v10, :cond_db

    invoke-virtual {v9}, Lcom/airbnb/android/models/Collection;->getId()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_db

    const/4 v1, 0x1

    .line 194
    .local v1, "inWishList":Z
    :goto_44
    if-eqz v1, :cond_de

    const/4 v3, 0x0

    .line 195
    .local v3, "listingInWishList":I
    :goto_47
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/airbnb/android/adapters/PickWishListAdapter$WishListViewHolder;->addedCheckmark:Landroid/widget/ImageView;

    invoke-virtual {v11, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/airbnb/android/adapters/PickWishListAdapter$WishListViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v9}, Lcom/airbnb/android/models/Collection;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    invoke-virtual {v9}, Lcom/airbnb/android/models/Collection;->getListingsCount()I

    move-result v4

    .line 200
    .local v4, "listingsCount":I
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/airbnb/android/adapters/PickWishListAdapter$WishListViewHolder;->listingsCount:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/adapters/PickWishListAdapter;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d001a

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v4, v14}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    if-lez v4, :cond_e2

    const/4 v5, 0x1

    .line 204
    .local v5, "nonEmptyWL":Z
    :goto_80
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/airbnb/android/adapters/PickWishListAdapter$WishListViewHolder;->coverImageView:Lcom/airbnb/android/views/AirImageView;

    if-eqz v5, :cond_e4

    invoke-virtual {v9}, Lcom/airbnb/android/models/Collection;->getImageUrl()Ljava/lang/String;

    move-result-object v11

    :goto_8a
    invoke-virtual {v12, v11}, Lcom/airbnb/android/views/AirImageView;->setImageUrl(Ljava/lang/String;)V

    .line 205
    if-eqz v5, :cond_e6

    const/4 v8, 0x0

    .line 206
    .local v8, "padding":I
    :goto_90
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/airbnb/android/adapters/PickWishListAdapter$WishListViewHolder;->coverImageView:Lcom/airbnb/android/views/AirImageView;

    invoke-virtual {v11, v8, v8, v8, v8}, Lcom/airbnb/android/views/AirImageView;->setPadding(IIII)V

    .line 208
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/airbnb/android/adapters/PickWishListAdapter$WishListViewHolder;->privacyIndicator:Landroid/widget/ImageView;

    invoke-virtual {v9}, Lcom/airbnb/android/models/Collection;->isPrivateCollection()Z

    move-result v11

    if-eqz v11, :cond_e9

    const/4 v11, 0x0

    :goto_a2
    invoke-virtual {v12, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    move-object/from16 v0, p2

    iput-object v9, v0, Lcom/airbnb/android/adapters/PickWishListAdapter$WishListViewHolder;->wishList:Lcom/airbnb/android/models/Collection;

    .line 211
    return-void

    .line 183
    .end local v1    # "inWishList":Z
    .end local v3    # "listingInWishList":I
    .end local v4    # "listingsCount":I
    .end local v5    # "nonEmptyWL":Z
    .end local v8    # "padding":I
    .end local v10    # "wishlistIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_aa
    const/4 v11, 0x0

    goto/16 :goto_24

    .line 185
    .end local v2    # "index":I
    .end local v9    # "wishlist":Lcom/airbnb/android/models/Collection;
    :cond_ad
    add-int/lit8 v11, p1, -0x6

    sub-int v2, v11, v6

    .line 186
    .restart local v2    # "index":I
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v11

    invoke-virtual {v11}, Lcom/airbnb/android/AirbnbApi;->getWishLists()Ljava/util/List;

    move-result-object v7

    .line 187
    .local v7, "otherWishLists":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Collection;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/airbnb/android/adapters/PickWishListAdapter;->mRecentWishLists:Ljava/util/List;

    invoke-interface {v7, v11}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 188
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/airbnb/android/models/Collection;

    .line 189
    .restart local v9    # "wishlist":Lcom/airbnb/android/models/Collection;
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/airbnb/android/adapters/PickWishListAdapter$WishListViewHolder;->divider:Landroid/view/View;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ne v2, v11, :cond_d9

    const/16 v11, 0x8

    :goto_d4
    invoke-virtual {v12, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_27

    :cond_d9
    const/4 v11, 0x0

    goto :goto_d4

    .line 193
    .end local v7    # "otherWishLists":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Collection;>;"
    .restart local v10    # "wishlistIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_db
    const/4 v1, 0x0

    goto/16 :goto_44

    .line 194
    .restart local v1    # "inWishList":Z
    :cond_de
    const/16 v3, 0x8

    goto/16 :goto_47

    .line 203
    .restart local v3    # "listingInWishList":I
    .restart local v4    # "listingsCount":I
    :cond_e2
    const/4 v5, 0x0

    goto :goto_80

    .line 204
    .restart local v5    # "nonEmptyWL":Z
    :cond_e4
    const/4 v11, 0x0

    goto :goto_8a

    .line 205
    :cond_e6
    sget v8, Lcom/airbnb/android/adapters/PickWishListAdapter;->WL_PADDING:I

    goto :goto_90

    .line 208
    .restart local v8    # "padding":I
    :cond_e9
    const/4 v11, 0x4

    goto :goto_a2
.end method

.method private setupAddNewWishListRow(Landroid/view/View;)V
    .registers 9
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    const v6, 0x7f020122

    .line 214
    const v5, 0x7f080386

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 215
    .local v4, "nameEditText":Landroid/widget/EditText;
    const v5, 0x7f080387

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 216
    .local v1, "checkMark":Landroid/widget/ImageView;
    const v5, 0x7f080388

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 218
    .local v0, "addNewSpinner":Landroid/widget/ProgressBar;
    new-instance v5, Lcom/airbnb/android/adapters/PickWishListAdapter$1;

    invoke-direct {v5, p0, v0, v1}, Lcom/airbnb/android/adapters/PickWishListAdapter$1;-><init>(Lcom/airbnb/android/adapters/PickWishListAdapter;Landroid/widget/ProgressBar;Landroid/widget/ImageView;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 228
    const v5, 0x7f0a001a

    invoke-static {v6, v5}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdWithColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 229
    .local v2, "disabledCheckmark":Landroid/graphics/drawable/Drawable;
    const v5, 0x7f0a002b

    invoke-static {v6, v5}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdWithColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 231
    .local v3, "enabledCheckmark":Landroid/graphics/drawable/Drawable;
    new-instance v5, Lcom/airbnb/android/adapters/PickWishListAdapter$2;

    invoke-direct {v5, p0, v1, v2, v3}, Lcom/airbnb/android/adapters/PickWishListAdapter$2;-><init>(Lcom/airbnb/android/adapters/PickWishListAdapter;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 247
    new-instance v5, Lcom/airbnb/android/adapters/PickWishListAdapter$3;

    invoke-direct {v5, p0, v4, v0, v1}, Lcom/airbnb/android/adapters/PickWishListAdapter$3;-><init>(Lcom/airbnb/android/adapters/PickWishListAdapter;Landroid/widget/EditText;Landroid/widget/ProgressBar;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    return-void
.end method


# virtual methods
.method public addWishListsAddedTo(Lcom/airbnb/android/models/Collection;)V
    .registers 3
    .param p1, "wishList"    # Lcom/airbnb/android/models/Collection;

    .prologue
    .line 316
    iget-object v0, p0, Lcom/airbnb/android/adapters/PickWishListAdapter;->mWishlistsAddedTo:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    return-void
.end method

.method public getCount()I
    .registers 4

    .prologue
    .line 75
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    .line 76
    .local v1, "numWishLists":I
    add-int/lit8 v0, v1, 0x6

    .line 77
    .local v0, "count":I
    const/4 v2, 0x3

    if-gt v1, v2, :cond_b

    .line 78
    add-int/lit8 v0, v0, -0x1

    .line 80
    :cond_b
    return v0
.end method

.method public getItemViewType(I)I
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 90
    sget-object v0, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->WISHLIST_ROW:Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

    .line 92
    .local v0, "viewType":Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;
    sget-object v1, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->TRANSPARENT_TOP:Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_11

    .line 93
    sget-object v0, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->TRANSPARENT_TOP:Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

    .line 107
    :cond_c
    :goto_c
    invoke-virtual {v0}, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->ordinal()I

    move-result v1

    return v1

    .line 95
    :cond_11
    sget-object v1, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->TRANSPARENT_BODY:Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_1c

    .line 96
    sget-object v0, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->TRANSPARENT_BODY:Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

    goto :goto_c

    .line 98
    :cond_1c
    sget-object v1, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->ADD_NEW_WISHLIST:Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_27

    .line 99
    sget-object v0, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->ADD_NEW_WISHLIST:Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

    goto :goto_c

    .line 101
    :cond_27
    sget-object v1, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->SELECT_WISHLIST_TITLE:Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_32

    .line 102
    sget-object v0, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->SELECT_WISHLIST_TITLE:Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

    goto :goto_c

    .line 104
    :cond_32
    sget-object v1, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->SECTION_HEADER:Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->ordinal()I

    move-result v1

    if-eq p1, v1, :cond_44

    iget-object v1, p0, Lcom/airbnb/android/adapters/PickWishListAdapter;->mRecentWishLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    if-ne p1, v1, :cond_c

    .line 105
    :cond_44
    sget-object v0, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->SECTION_HEADER:Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

    goto :goto_c
.end method

.method public getNumAllWishListsAddedTo()I
    .registers 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/airbnb/android/adapters/PickWishListAdapter;->mWishlistsAddedTo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNumPrivateWishListsAddedTo()I
    .registers 5

    .prologue
    .line 334
    const/4 v1, 0x0

    .line 335
    .local v1, "numPrivateWLs":I
    iget-object v3, p0, Lcom/airbnb/android/adapters/PickWishListAdapter;->mWishlistsAddedTo:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/Collection;

    .line 336
    .local v2, "wishlistsAddedTo":Lcom/airbnb/android/models/Collection;
    invoke-virtual {v2}, Lcom/airbnb/android/models/Collection;->isPrivateCollection()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 337
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 340
    .end local v2    # "wishlistsAddedTo":Lcom/airbnb/android/models/Collection;
    :cond_1c
    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 121
    const/4 v4, 0x0

    .line 122
    .local v4, "viewHolder":Lcom/airbnb/android/adapters/PickWishListAdapter$WishListViewHolder;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/PickWishListAdapter;->getItemViewType(I)I

    move-result v5

    .line 124
    .local v5, "viewType":I
    if-nez p2, :cond_c7

    .line 126
    sget-object v6, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->TRANSPARENT_TOP:Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

    invoke-virtual {v6}, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->ordinal()I

    move-result v6

    if-ne v5, v6, :cond_73

    .line 127
    const v2, 0x7f030156

    .line 139
    .local v2, "resId":I
    :goto_12
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/PickWishListAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 141
    sget-object v6, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->TRANSPARENT_BODY:Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

    invoke-virtual {v6}, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->ordinal()I

    move-result v6

    if-ne v5, v6, :cond_aa

    .line 142
    const v6, 0x7f080391

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 143
    .local v3, "transparentView":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {p0}, Lcom/airbnb/android/adapters/PickWishListAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/airbnb/android/utils/WishListUtils;->getWishListPickerTransparentTopHeight(Landroid/content/Context;)F

    move-result v7

    float-to-int v7, v7

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 158
    .end local v2    # "resId":I
    .end local v3    # "transparentView":Landroid/view/View;
    :cond_3d
    :goto_3d
    sget-object v6, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->SELECT_WISHLIST_TITLE:Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

    invoke-virtual {v6}, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->ordinal()I

    move-result v6

    if-ne v5, v6, :cond_de

    .line 159
    const v6, 0x7f080390

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 160
    .local v0, "headerView":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/airbnb/android/adapters/PickWishListAdapter;->mWishlistsAddedTo:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 161
    .local v1, "numWishLists":I
    if-lez v1, :cond_d7

    .line 162
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/PickWishListAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0042

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v1, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    .end local v0    # "headerView":Landroid/widget/TextView;
    .end local v1    # "numWishLists":I
    :cond_72
    :goto_72
    return-object p2

    .line 128
    :cond_73
    sget-object v6, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->TRANSPARENT_BODY:Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

    invoke-virtual {v6}, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->ordinal()I

    move-result v6

    if-ne v5, v6, :cond_7f

    .line 129
    const v2, 0x7f030155

    .restart local v2    # "resId":I
    goto :goto_12

    .line 130
    .end local v2    # "resId":I
    :cond_7f
    sget-object v6, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->SELECT_WISHLIST_TITLE:Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

    invoke-virtual {v6}, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->ordinal()I

    move-result v6

    if-ne v5, v6, :cond_8b

    .line 131
    const v2, 0x7f030154

    .restart local v2    # "resId":I
    goto :goto_12

    .line 132
    .end local v2    # "resId":I
    :cond_8b
    sget-object v6, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->ADD_NEW_WISHLIST:Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

    invoke-virtual {v6}, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->ordinal()I

    move-result v6

    if-ne v5, v6, :cond_98

    .line 133
    const v2, 0x7f030151

    .restart local v2    # "resId":I
    goto/16 :goto_12

    .line 134
    .end local v2    # "resId":I
    :cond_98
    sget-object v6, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->SECTION_HEADER:Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

    invoke-virtual {v6}, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->ordinal()I

    move-result v6

    if-ne v5, v6, :cond_a5

    .line 135
    const v2, 0x7f030152

    .restart local v2    # "resId":I
    goto/16 :goto_12

    .line 137
    .end local v2    # "resId":I
    :cond_a5
    const v2, 0x7f030153

    .restart local v2    # "resId":I
    goto/16 :goto_12

    .line 145
    :cond_aa
    sget-object v6, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->ADD_NEW_WISHLIST:Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

    invoke-virtual {v6}, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->ordinal()I

    move-result v6

    if-ne v5, v6, :cond_b6

    .line 146
    invoke-direct {p0, p2}, Lcom/airbnb/android/adapters/PickWishListAdapter;->setupAddNewWishListRow(Landroid/view/View;)V

    goto :goto_3d

    .line 148
    :cond_b6
    sget-object v6, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->WISHLIST_ROW:Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

    invoke-virtual {v6}, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->ordinal()I

    move-result v6

    if-ne v5, v6, :cond_3d

    .line 149
    invoke-direct {p0, p2}, Lcom/airbnb/android/adapters/PickWishListAdapter;->createViewHolder(Landroid/view/View;)Lcom/airbnb/android/adapters/PickWishListAdapter$WishListViewHolder;

    move-result-object v4

    .line 150
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_3d

    .line 153
    .end local v2    # "resId":I
    :cond_c7
    sget-object v6, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->WISHLIST_ROW:Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

    invoke-virtual {v6}, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->ordinal()I

    move-result v6

    if-ne v5, v6, :cond_3d

    .line 154
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "viewHolder":Lcom/airbnb/android/adapters/PickWishListAdapter$WishListViewHolder;
    check-cast v4, Lcom/airbnb/android/adapters/PickWishListAdapter$WishListViewHolder;

    .restart local v4    # "viewHolder":Lcom/airbnb/android/adapters/PickWishListAdapter$WishListViewHolder;
    goto/16 :goto_3d

    .line 164
    .restart local v0    # "headerView":Landroid/widget/TextView;
    .restart local v1    # "numWishLists":I
    :cond_d7
    const v6, 0x7f0e081c

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_72

    .line 167
    .end local v0    # "headerView":Landroid/widget/TextView;
    .end local v1    # "numWishLists":I
    :cond_de
    sget-object v6, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->SECTION_HEADER:Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

    invoke-virtual {v6}, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->ordinal()I

    move-result v6

    if-ne v5, v6, :cond_fe

    .line 168
    const v6, 0x7f080389

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 169
    .restart local v0    # "headerView":Landroid/widget/TextView;
    const/4 v6, 0x4

    if-ne p1, v6, :cond_fa

    const v6, 0x7f0e081a

    :goto_f5
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_72

    :cond_fa
    const v6, 0x7f0e080f

    goto :goto_f5

    .line 171
    .end local v0    # "headerView":Landroid/widget/TextView;
    :cond_fe
    sget-object v6, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->WISHLIST_ROW:Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

    invoke-virtual {v6}, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->ordinal()I

    move-result v6

    if-ne v5, v6, :cond_72

    .line 172
    invoke-direct {p0, p1, v4}, Lcom/airbnb/android/adapters/PickWishListAdapter;->renderWishList(ILcom/airbnb/android/adapters/PickWishListAdapter$WishListViewHolder;)V

    goto/16 :goto_72
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 85
    invoke-static {}, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->values()[Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getWishListsAddedToNames()Ljava/lang/String;
    .registers 13

    .prologue
    .line 348
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcom/airbnb/android/AirbnbApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 349
    .local v5, "resources":Landroid/content/res/Resources;
    const v10, 0x7f0e0829

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 350
    .local v9, "wordsConnector":Ljava/lang/String;
    const v10, 0x7f0e079c

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 351
    .local v8, "twoWordsConnector":Ljava/lang/String;
    const v10, 0x7f0e0370

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 353
    .local v3, "lastWordConnector":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    .local v6, "sb":Ljava/lang/StringBuilder;
    iget-object v10, p0, Lcom/airbnb/android/adapters/PickWishListAdapter;->mWishlistsAddedTo:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    .line 355
    .local v4, "numWishLists":I
    const/4 v10, 0x2

    if-ne v4, v10, :cond_72

    .line 356
    iget-object v10, p0, Lcom/airbnb/android/adapters/PickWishListAdapter;->mWishlistsAddedTo:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/airbnb/android/models/Collection;

    invoke-virtual {v10}, Lcom/airbnb/android/models/Collection;->getName()Ljava/lang/String;

    move-result-object v1

    .line 357
    .local v1, "firstWishList":Ljava/lang/String;
    iget-object v10, p0, Lcom/airbnb/android/adapters/PickWishListAdapter;->mWishlistsAddedTo:Ljava/util/List;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/airbnb/android/models/Collection;

    invoke-virtual {v10}, Lcom/airbnb/android/models/Collection;->getName()Ljava/lang/String;

    move-result-object v7

    .line 358
    .local v7, "secondWishList":Ljava/lang/String;
    const-string/jumbo v10, "\'"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 374
    .end local v1    # "firstWishList":Ljava/lang/String;
    .end local v7    # "secondWishList":Ljava/lang/String;
    :goto_71
    return-object v10

    .line 361
    :cond_72
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_73
    if-ge v2, v4, :cond_a2

    .line 362
    iget-object v10, p0, Lcom/airbnb/android/adapters/PickWishListAdapter;->mWishlistsAddedTo:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Collection;

    .line 363
    .local v0, "currWishList":Lcom/airbnb/android/models/Collection;
    if-lez v2, :cond_86

    .line 364
    add-int/lit8 v10, v4, -0x1

    if-ne v2, v10, :cond_9e

    .line 366
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    :cond_86
    :goto_86
    const-string/jumbo v10, "\'"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/airbnb/android/models/Collection;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    add-int/lit8 v2, v2, 0x1

    goto :goto_73

    .line 369
    :cond_9e
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_86

    .line 374
    .end local v0    # "currWishList":Lcom/airbnb/android/models/Collection;
    :cond_a2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_71
.end method

.method public isEnabled(I)Z
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 112
    sget-object v0, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->TRANSPARENT_BODY:Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->ordinal()I

    move-result v0

    if-eq p1, v0, :cond_10

    sget-object v0, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->TRANSPARENT_TOP:Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_12

    .line 113
    :cond_10
    const/4 v0, 0x0

    .line 116
    :goto_11
    return v0

    :cond_12
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_11
.end method

.method public isWishListsAddedToEmpty()Z
    .registers 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/airbnb/android/adapters/PickWishListAdapter;->mWishlistsAddedTo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public removeWishListsAddedTo(Lcom/airbnb/android/models/Collection;)Z
    .registers 6
    .param p1, "wishList"    # Lcom/airbnb/android/models/Collection;

    .prologue
    .line 321
    iget-object v2, p0, Lcom/airbnb/android/adapters/PickWishListAdapter;->mRecentWishLists:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 322
    .local v0, "recentWishListsIndex":I
    const/4 v2, -0x1

    if-le v0, v2, :cond_1a

    .line 323
    iget-object v2, p0, Lcom/airbnb/android/adapters/PickWishListAdapter;->mRecentWishLists:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Collection;

    .line 324
    .local v1, "wishListInRecent":Lcom/airbnb/android/models/Collection;
    invoke-virtual {v1}, Lcom/airbnb/android/models/Collection;->getListings()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/adapters/PickWishListAdapter;->mListingToAdd:Lcom/airbnb/android/models/Listing;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 326
    .end local v1    # "wishListInRecent":Lcom/airbnb/android/models/Collection;
    :cond_1a
    iget-object v2, p0, Lcom/airbnb/android/adapters/PickWishListAdapter;->mWishlistsAddedTo:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public setRecentWishLists(Ljava/util/List;)V
    .registers 2
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
    .line 312
    .local p1, "recentWishLists":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Collection;>;"
    iput-object p1, p0, Lcom/airbnb/android/adapters/PickWishListAdapter;->mRecentWishLists:Ljava/util/List;

    .line 313
    return-void
.end method
