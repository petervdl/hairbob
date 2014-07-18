.class public Lcom/airbnb/android/adapters/MyWishListListingsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MyWishListListingsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;,
        Lcom/airbnb/android/adapters/MyWishListListingsAdapter$RowType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/airbnb/android/models/Listing;",
        ">;"
    }
.end annotation


# static fields
.field private static final FETCH_WL_DELAY:I = 0x7d0

.field private static final TAP_DIST_THRESHOLD_INCHES:F = 0.25f

.field private static final TAP_THRESHOLD:I = 0xfa

.field private static final UNWISHLIST_ANIM_FADE_IN:I = 0xfa

.field private static final UNWISHLIST_ANIM_FADE_OUT:I = 0xc8


# instance fields
.field private mCurrentPage:Landroid/util/SparseIntArray;

.field private mFetching:Z

.field private final mHandler:Landroid/os/Handler;

.field private mInvDensityDpi:F

.field private mNumColumns:I

.field private mRemainingData:Z

.field private mSelectedDrawable:Landroid/graphics/drawable/Drawable;

.field private mUnselectedDrawable:Landroid/graphics/drawable/Drawable;

.field private mWishList:Lcom/airbnb/android/models/Collection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/airbnb/android/models/Collection;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wishlist"    # Lcom/airbnb/android/models/Collection;

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-virtual {p2}, Lcom/airbnb/android/models/Collection;->getListings()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 53
    iput-boolean v2, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->mFetching:Z

    .line 56
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->mHandler:Landroid/os/Handler;

    .line 77
    iput-boolean v2, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->mRemainingData:Z

    .line 78
    iput-object p2, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->mWishList:Lcom/airbnb/android/models/Collection;

    .line 80
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->mCurrentPage:Landroid/util/SparseIntArray;

    .line 82
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 83
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 84
    const/high16 v1, 0x3f800000

    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->mInvDensityDpi:F

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->mNumColumns:I

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02023a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->mUnselectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020239

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->mSelectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 89
    return-void
.end method

.method static synthetic access$002(Lcom/airbnb/android/adapters/MyWishListListingsAdapter;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/adapters/MyWishListListingsAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->mRemainingData:Z

    return p1
.end method

.method static synthetic access$102(Lcom/airbnb/android/adapters/MyWishListListingsAdapter;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/adapters/MyWishListListingsAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->mFetching:Z

    return p1
.end method

.method static synthetic access$300(Lcom/airbnb/android/adapters/MyWishListListingsAdapter;)Landroid/util/SparseIntArray;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/adapters/MyWishListListingsAdapter;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->mCurrentPage:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/adapters/MyWishListListingsAdapter;)F
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/adapters/MyWishListListingsAdapter;

    .prologue
    .line 46
    iget v0, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->mInvDensityDpi:F

    return v0
.end method

.method static synthetic access$500(Lcom/airbnb/android/adapters/MyWishListListingsAdapter;)Lcom/airbnb/android/models/Collection;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/adapters/MyWishListListingsAdapter;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->mWishList:Lcom/airbnb/android/models/Collection;

    return-object v0
.end method

.method private fetchWishListListings()V
    .registers 6

    .prologue
    .line 126
    iget-boolean v2, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->mFetching:Z

    if-eqz v2, :cond_5

    .line 161
    :goto_4
    return-void

    .line 130
    :cond_5
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    .line 131
    .local v0, "numListings":I
    new-instance v1, Lcom/airbnb/android/requests/WishListListingsRequest;

    iget-object v2, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->mWishList:Lcom/airbnb/android/models/Collection;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Collection;->getId()J

    move-result-wide v2

    new-instance v4, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$1;

    invoke-direct {v4, p0, v0}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$1;-><init>(Lcom/airbnb/android/adapters/MyWishListListingsAdapter;I)V

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/airbnb/android/requests/WishListListingsRequest;-><init>(JILcom/airbnb/android/requests/RequestListener;)V

    .line 158
    .local v1, "request":Lcom/airbnb/android/requests/WishListListingsRequest;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->mFetching:Z

    .line 159
    invoke-virtual {v1}, Lcom/airbnb/android/requests/WishListListingsRequest;->execute()V

    goto :goto_4
.end method

.method private setupViewPagerOnTouchListener(Landroid/view/ViewGroup;Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;)V
    .registers 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewHolder"    # Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;

    .prologue
    .line 257
    iget-object v0, p2, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;->viewPager:Lcom/airbnb/android/views/ClickableViewPager;

    .line 258
    .local v0, "viewPager":Lcom/airbnb/android/views/ClickableViewPager;
    new-instance v1, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$4;-><init>(Lcom/airbnb/android/adapters/MyWishListListingsAdapter;Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/ClickableViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 303
    return-void
.end method


# virtual methods
.method public addData(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p1, "listings":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Listing;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_24

    .line 316
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Listing;

    .line 317
    .local v1, "listing":Lcom/airbnb/android/models/Listing;
    invoke-virtual {p0, v1}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_20

    .line 318
    invoke-virtual {p0, v1}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->remove(Ljava/lang/Object;)V

    .line 320
    :cond_20
    invoke-virtual {p0, v1}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->add(Ljava/lang/Object;)V

    goto :goto_a

    .line 323
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listing":Lcom/airbnb/android/models/Listing;
    :cond_24
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x32

    if-lt v2, v3, :cond_33

    const/4 v2, 0x1

    :goto_2d
    iput-boolean v2, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->mRemainingData:Z

    .line 325
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->notifyDataSetChanged()V

    .line 326
    return-void

    .line 323
    :cond_33
    const/4 v2, 0x0

    goto :goto_2d
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 93
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    .line 94
    .local v0, "numWishLists":I
    iget-boolean v1, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->mRemainingData:Z

    if-eqz v1, :cond_a

    add-int/lit8 v0, v0, 0x1

    .end local v0    # "numWishLists":I
    :cond_a
    return v0
.end method

.method public getItemViewType(I)I
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->getCount()I

    move-result v0

    .line 100
    .local v0, "numWishlists":I
    iget-boolean v1, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->mRemainingData:Z

    if-eqz v1, :cond_13

    add-int/lit8 v1, v0, -0x1

    if-ne p1, v1, :cond_13

    .line 101
    sget-object v1, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$RowType;->LOADING:Lcom/airbnb/android/adapters/MyWishListListingsAdapter$RowType;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$RowType;->ordinal()I

    move-result v1

    .line 103
    :goto_12
    return v1

    :cond_13
    sget-object v1, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$RowType;->LISTING:Lcom/airbnb/android/adapters/MyWishListListingsAdapter$RowType;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$RowType;->ordinal()I

    move-result v1

    goto :goto_12
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->getItemViewType(I)I

    move-result v0

    sget-object v1, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$RowType;->LOADING:Lcom/airbnb/android/adapters/MyWishListListingsAdapter$RowType;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$RowType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_23

    .line 114
    invoke-direct {p0}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->fetchWishListListings()V

    .line 116
    if-nez p2, :cond_21

    .line 117
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03014c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_21
    move-object v0, p2

    .line 122
    :goto_22
    return-object v0

    :cond_23
    invoke-virtual {p0, p1, p2, p3}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->getWishListView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_22
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 108
    invoke-static {}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$RowType;->values()[Lcom/airbnb/android/adapters/MyWishListListingsAdapter$RowType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getWishListView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 164
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/Listing;

    .line 166
    .local v2, "listing":Lcom/airbnb/android/models/Listing;
    if-nez p2, :cond_87

    .line 167
    new-instance v4, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;

    invoke-direct {v4, v8}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;-><init>(Lcom/airbnb/android/adapters/MyWishListListingsAdapter$1;)V

    .line 168
    .local v4, "viewHolder":Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030157

    invoke-virtual {v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 170
    iget v5, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->mNumColumns:I

    invoke-static {p3, v5}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->getImageHeight(Landroid/view/ViewGroup;I)I

    move-result v0

    .line 171
    .local v0, "imageHeight":I
    const v5, 0x7f080033

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/airbnb/android/views/ClickableViewPager;

    iput-object v5, v4, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;->viewPager:Lcom/airbnb/android/views/ClickableViewPager;

    .line 172
    iget-object v5, v4, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;->viewPager:Lcom/airbnb/android/views/ClickableViewPager;

    invoke-virtual {v5}, Lcom/airbnb/android/views/ClickableViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 174
    const v5, 0x7f080310

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;->nameTextView:Landroid/widget/TextView;

    .line 175
    const v5, 0x7f080311

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;->locationTextView:Landroid/widget/TextView;

    .line 176
    const v5, 0x7f080392

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v4, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;->wishListButton:Landroid/widget/ImageView;

    .line 177
    const v5, 0x7f0803ec

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v4, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;->listingPriceTag:Landroid/view/View;

    .line 178
    const v5, 0x7f080064

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/airbnb/android/views/HaloImageView;

    iput-object v5, v4, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;->hostPhoto:Lcom/airbnb/android/views/HaloImageView;

    .line 180
    invoke-direct {p0, p3, v4}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->setupViewPagerOnTouchListener(Landroid/view/ViewGroup;Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;)V

    .line 181
    iget-object v5, v4, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;->viewPager:Lcom/airbnb/android/views/ClickableViewPager;

    new-instance v6, Lcom/airbnb/android/adapters/PropertyImagesViewPagerAdapter;

    invoke-direct {v6, v2}, Lcom/airbnb/android/adapters/PropertyImagesViewPagerAdapter;-><init>(Lcom/airbnb/android/models/Listing;)V

    invoke-virtual {v5, v6}, Lcom/airbnb/android/views/ClickableViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 183
    move-object v3, p2

    .line 185
    .local v3, "rowView":Landroid/view/View;
    iget-object v5, v4, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;->wishListButton:Landroid/widget/ImageView;

    new-instance v6, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$2;

    invoke-direct {v6, p0, v4, v3}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$2;-><init>(Lcom/airbnb/android/adapters/MyWishListListingsAdapter;Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 196
    .end local v0    # "imageHeight":I
    .end local v3    # "rowView":Landroid/view/View;
    .end local v4    # "viewHolder":Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;
    :cond_87
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/airbnb/android/AirbnbApi;->addListingToWishLists(Lcom/airbnb/android/models/Listing;)V

    .line 198
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;

    .line 199
    .restart local v4    # "viewHolder":Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;
    iput p1, v4, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;->position:I

    .line 201
    instance-of v5, p3, Lcom/airbnb/android/interfaces/ViewPagerAbsListView;

    if-eqz v5, :cond_a7

    move-object v1, p3

    .line 202
    check-cast v1, Lcom/airbnb/android/interfaces/ViewPagerAbsListView;

    .line 204
    .local v1, "listView":Lcom/airbnb/android/interfaces/ViewPagerAbsListView;
    iget-object v5, v4, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;->viewPager:Lcom/airbnb/android/views/ClickableViewPager;

    new-instance v6, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$3;

    invoke-direct {v6, p0, v4, v1}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$3;-><init>(Lcom/airbnb/android/adapters/MyWishListListingsAdapter;Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;Lcom/airbnb/android/interfaces/ViewPagerAbsListView;)V

    invoke-virtual {v5, v6}, Lcom/airbnb/android/views/ClickableViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 233
    .end local v1    # "listView":Lcom/airbnb/android/interfaces/ViewPagerAbsListView;
    :cond_a7
    iget-object v5, v4, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;->viewPager:Lcom/airbnb/android/views/ClickableViewPager;

    invoke-virtual {v5}, Lcom/airbnb/android/views/ClickableViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v5

    check-cast v5, Lcom/airbnb/android/adapters/PropertyImagesViewPagerAdapter;

    invoke-virtual {v5, v2}, Lcom/airbnb/android/adapters/PropertyImagesViewPagerAdapter;->set(Lcom/airbnb/android/models/Listing;)V

    .line 234
    iget-object v5, v4, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;->viewPager:Lcom/airbnb/android/views/ClickableViewPager;

    iget-object v6, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->mCurrentPage:Landroid/util/SparseIntArray;

    invoke-virtual {v6, p1, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/airbnb/android/views/ClickableViewPager;->setCurrentItem(IZ)V

    .line 235
    iget-object v5, v4, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;->viewPager:Lcom/airbnb/android/views/ClickableViewPager;

    iget-object v6, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->mHandler:Landroid/os/Handler;

    invoke-static {v5, v6}, Lcom/airbnb/android/utils/MiscUtils;->loadStaticMapIfNeeded(Lcom/airbnb/android/views/ClickableViewPager;Landroid/os/Handler;)V

    .line 237
    iget-object v5, v4, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v5, v4, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;->wishListButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 239
    iget-object v5, v4, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;->wishListButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 240
    iget-object v5, v4, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;->wishListButton:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->mSelectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 242
    iget-object v5, v4, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;->locationTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getLocation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v4, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;->listingPriceTag:Landroid/view/View;

    invoke-static {v5, v6, v2, v8}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->setupListingPriceTag(Landroid/content/Context;Landroid/view/View;Lcom/airbnb/android/models/Listing;Ljava/lang/Integer;)V

    .line 246
    iget-object v5, v4, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;->hostPhoto:Lcom/airbnb/android/views/HaloImageView;

    if-eqz v5, :cond_fe

    .line 248
    iget-object v5, v4, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;->hostPhoto:Lcom/airbnb/android/views/HaloImageView;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getHost()Lcom/airbnb/android/models/User;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/airbnb/android/views/HaloImageView;->setImageUrlForUser(Lcom/airbnb/android/models/User;)V

    .line 251
    :cond_fe
    return-object p2
.end method

.method public setData(Ljava/util/List;I)V
    .registers 4
    .param p2, "listingCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 309
    .local p1, "listings":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Listing;>;"
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->clear()V

    .line 310
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->addData(Ljava/util/List;)V

    .line 311
    iget-object v0, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->mWishList:Lcom/airbnb/android/models/Collection;

    invoke-virtual {v0, p2}, Lcom/airbnb/android/models/Collection;->setListingsCount(I)V

    .line 312
    return-void
.end method

.method protected unWishlist(Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;Landroid/view/View;)V
    .registers 23
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p2, "viewHolder"    # Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;
    .param p3, "rowView"    # Landroid/view/View;

    .prologue
    .line 329
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    sget-object v6, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->WishLists:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v6, v6, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "tap_heart"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "remove_from_wl"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string/jumbo v6, "collection"

    aput-object v6, v4, v5

    invoke-static {v4}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 331
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->mWishList:Lcom/airbnb/android/models/Collection;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Collection;->getId()J

    move-result-wide v10

    .line 332
    .local v10, "wishListId":J
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v8

    .line 334
    .local v8, "listingId":J
    new-instance v12, Lcom/airbnb/android/requests/UpdateWishListRequest;

    const/16 v17, 0x0

    new-instance v4, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$5;

    move-object/from16 v5, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p2

    invoke-direct/range {v4 .. v11}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$5;-><init>(Lcom/airbnb/android/adapters/MyWishListListingsAdapter;Landroid/view/View;Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;JJ)V

    move-wide v13, v10

    move-wide v15, v8

    move-object/from16 v18, v4

    invoke-direct/range {v12 .. v18}, Lcom/airbnb/android/requests/UpdateWishListRequest;-><init>(JJZLcom/airbnb/android/requests/RequestListener;)V

    .line 366
    .local v12, "request":Lcom/airbnb/android/requests/UpdateWishListRequest;
    invoke-virtual {v12}, Lcom/airbnb/android/requests/UpdateWishListRequest;->execute()V

    .line 369
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;->wishListButton:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 370
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;->wishListButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->mUnselectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 371
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;->wishListButton:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 372
    const-string/jumbo v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_8c

    move-object/from16 v0, p3

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v5, 0xc8

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 374
    new-instance v4, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$6;-><init>(Lcom/airbnb/android/adapters/MyWishListListingsAdapter;Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;Landroid/view/View;)V

    const-wide/16 v5, 0xfa

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 383
    return-void

    .line 372
    :array_8c
    .array-data 4
        0x3f800000
        0x0
    .end array-data
.end method
