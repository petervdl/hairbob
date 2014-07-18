.class public Lcom/airbnb/android/adapters/DiscoverAdapter;
.super Lcom/airbnb/android/adapters/WishListableAdapter;
.source "DiscoverAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/adapters/DiscoverAdapter$12;,
        Lcom/airbnb/android/adapters/DiscoverAdapter$LocationViewHolder;,
        Lcom/airbnb/android/adapters/DiscoverAdapter$LocationPageRecord;
    }
.end annotation


# instance fields
.field private mAutoScrollingViewPager:Lcom/airbnb/android/views/ClickableViewPager;

.field private mItemHeight:I

.field private mLoadMoreEnabled:Z

.field private mLocation:Landroid/location/Location;

.field private mLocationsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/airbnb/android/models/TravelLocationsFeedItem;",
            "Lcom/airbnb/android/adapters/DiscoverAdapter$LocationPageRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPopularRequest:Lcom/airbnb/android/requests/PopularRequest;

.field private mServerOffsetParams:Lcom/airbnb/android/utils/Strap;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;Ljava/lang/String;)V
    .registers 11
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "allowPagination"    # Z
    .param p3, "addToWishListListener"    # Lcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;
    .param p4, "trackingPosition"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/adapters/WishListableAdapter;-><init>(Landroid/content/Context;ZLcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;Ljava/lang/String;I)V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/adapters/DiscoverAdapter;->mLoadMoreEnabled:Z

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/adapters/DiscoverAdapter;->mLocationsMap:Ljava/util/HashMap;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/adapters/DiscoverAdapter;Lcom/airbnb/android/models/TravelLocationsFeedItem;IIZ)Lcom/airbnb/android/adapters/DiscoverAdapter$LocationPageRecord;
    .registers 6
    .param p0, "x0"    # Lcom/airbnb/android/adapters/DiscoverAdapter;
    .param p1, "x1"    # Lcom/airbnb/android/models/TravelLocationsFeedItem;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/airbnb/android/adapters/DiscoverAdapter;->updateSelectedLocation(Lcom/airbnb/android/models/TravelLocationsFeedItem;IIZ)Lcom/airbnb/android/adapters/DiscoverAdapter$LocationPageRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/adapters/DiscoverAdapter;)Lcom/airbnb/android/views/ClickableViewPager;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/adapters/DiscoverAdapter;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/airbnb/android/adapters/DiscoverAdapter;->mAutoScrollingViewPager:Lcom/airbnb/android/views/ClickableViewPager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/airbnb/android/adapters/DiscoverAdapter;Lcom/airbnb/android/views/ClickableViewPager;)Lcom/airbnb/android/views/ClickableViewPager;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/adapters/DiscoverAdapter;
    .param p1, "x1"    # Lcom/airbnb/android/views/ClickableViewPager;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/airbnb/android/adapters/DiscoverAdapter;->mAutoScrollingViewPager:Lcom/airbnb/android/views/ClickableViewPager;

    return-object p1
.end method

.method static synthetic access$202(Lcom/airbnb/android/adapters/DiscoverAdapter;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/adapters/DiscoverAdapter;
    .param p1, "x1"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/airbnb/android/adapters/DiscoverAdapter;->mServerOffsetParams:Lcom/airbnb/android/utils/Strap;

    return-object p1
.end method

.method private getEnableLastMinuteCallout(Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .registers 15
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "position"    # I

    .prologue
    const v10, 0x7f0a000a

    const v9, 0x7f0a0006

    const/4 v8, 0x0

    .line 208
    if-nez p1, :cond_69

    .line 209
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030051

    invoke-virtual {v3, v4, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 211
    invoke-virtual {p0, p3}, Lcom/airbnb/android/adapters/DiscoverAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/EnableLastMinuteBookingsFeedItem;

    .line 212
    .local v1, "feedItem":Lcom/airbnb/android/models/EnableLastMinuteBookingsFeedItem;
    const v3, 0x7f0800eb

    invoke-static {p1, v3}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0e016d

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/airbnb/android/models/EnableLastMinuteBookingsFeedItem;->getUser()Lcom/airbnb/android/models/User;

    move-result-object v7

    invoke-virtual {v7}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    const v3, 0x7f0800ea

    invoke-static {p1, v3}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 216
    .local v2, "imageView":Landroid/widget/ImageView;
    const v3, 0x7f0201fc

    const v4, 0x7f0a00a4

    invoke-static {v3, v4}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdWithColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 218
    const v3, 0x7f0800ed

    invoke-static {p1, v3}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Lcom/airbnb/android/adapters/DiscoverAdapter$4;

    invoke-direct {v4, p0, v1, p3}, Lcom/airbnb/android/adapters/DiscoverAdapter$4;-><init>(Lcom/airbnb/android/adapters/DiscoverAdapter;Lcom/airbnb/android/models/EnableLastMinuteBookingsFeedItem;I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    .end local v1    # "feedItem":Lcom/airbnb/android/models/EnableLastMinuteBookingsFeedItem;
    .end local v2    # "imageView":Landroid/widget/ImageView;
    :cond_69
    const v3, 0x7f0800ee

    invoke-static {p1, v3}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 253
    .local v0, "closeImageView":Landroid/widget/ImageView;
    const v3, 0x7f020125

    invoke-static {v3, v10, v10, v9, v9}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdWithColors(IIIII)Lcom/airbnb/android/utils/ColorizedDrawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 254
    new-instance v3, Lcom/airbnb/android/adapters/DiscoverAdapter$5;

    invoke-direct {v3, p0, p3}, Lcom/airbnb/android/adapters/DiscoverAdapter$5;-><init>(Lcom/airbnb/android/adapters/DiscoverAdapter;I)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    return-object p1
.end method

.method private getLastMinuteBookingsView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 183
    if-nez p1, :cond_3a

    .line 184
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030053

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 186
    const v3, 0x7f0800f3

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 187
    .local v0, "background":Landroid/widget/ImageView;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 188
    .local v2, "opts":Landroid/graphics/BitmapFactory$Options;
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 189
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020191

    invoke-static {v3, v4, v2}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 190
    .local v1, "bgImageRes":Landroid/graphics/Bitmap;
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 192
    new-instance v3, Lcom/airbnb/android/adapters/DiscoverAdapter$3;

    invoke-direct {v3, p0}, Lcom/airbnb/android/adapters/DiscoverAdapter$3;-><init>(Lcom/airbnb/android/adapters/DiscoverAdapter;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    .end local v0    # "background":Landroid/widget/ImageView;
    .end local v1    # "bgImageRes":Landroid/graphics/Bitmap;
    .end local v2    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_3a
    const v3, 0x7f0800f4

    invoke-static {p1, v3}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/airbnb/android/persist/LmbAirLocationStore;->getClosestAirLocation(Landroid/content/Context;)Lcom/airbnb/android/models/AirLocation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/models/AirLocation;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    return-object p1
.end method

.method private getLocationsView(Lcom/airbnb/android/models/TravelLocationsFeedItem;Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .registers 16
    .param p1, "item"    # Lcom/airbnb/android/models/TravelLocationsFeedItem;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "position"    # I

    .prologue
    const/4 v10, 0x0

    .line 273
    if-nez p2, :cond_1b

    .line 275
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030054

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 276
    new-instance v6, Lcom/airbnb/android/adapters/DiscoverAdapter$LocationViewHolder;

    invoke-direct {v6, p0, p2}, Lcom/airbnb/android/adapters/DiscoverAdapter$LocationViewHolder;-><init>(Lcom/airbnb/android/adapters/DiscoverAdapter;Landroid/view/View;)V

    .line 278
    .local v6, "viewHolder":Lcom/airbnb/android/adapters/DiscoverAdapter$LocationViewHolder;
    invoke-virtual {p2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 281
    .end local v6    # "viewHolder":Lcom/airbnb/android/adapters/DiscoverAdapter$LocationViewHolder;
    :cond_1b
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/android/adapters/DiscoverAdapter$LocationViewHolder;

    .line 282
    .restart local v6    # "viewHolder":Lcom/airbnb/android/adapters/DiscoverAdapter$LocationViewHolder;
    iput p4, v6, Lcom/airbnb/android/adapters/DiscoverAdapter$LocationViewHolder;->position:I

    .line 283
    new-instance v3, Lcom/airbnb/android/adapters/TravelLocationsViewPagerAdapter;

    invoke-virtual {p1}, Lcom/airbnb/android/models/TravelLocationsFeedItem;->getLocations()Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/airbnb/android/adapters/TravelLocationsViewPagerAdapter;-><init>(Ljava/util/List;)V

    .line 284
    .local v3, "travelAdapter":Lcom/airbnb/android/adapters/TravelLocationsViewPagerAdapter;
    iget-object v0, v6, Lcom/airbnb/android/adapters/DiscoverAdapter$LocationViewHolder;->loopingViewPager:Lcom/airbnb/android/views/LoopingViewPager;

    invoke-virtual {v0, v3}, Lcom/airbnb/android/views/LoopingViewPager;->setAdapter(Lcom/airbnb/android/adapters/LoopingPagerAdapter;)V

    .line 285
    iget-object v0, v6, Lcom/airbnb/android/adapters/DiscoverAdapter$LocationViewHolder;->loopingViewPager:Lcom/airbnb/android/views/LoopingViewPager;

    invoke-virtual {v0, v10}, Lcom/airbnb/android/views/LoopingViewPager;->setPeekEnabled(Z)V

    .line 287
    move-object v7, p2

    .line 288
    .local v7, "finalConvertView":Landroid/view/View;
    iget-object v0, v6, Lcom/airbnb/android/adapters/DiscoverAdapter$LocationViewHolder;->loopingViewPager:Lcom/airbnb/android/views/LoopingViewPager;

    new-instance v1, Lcom/airbnb/android/adapters/DiscoverAdapter$6;

    invoke-direct {v1, p0, p3, v7, p4}, Lcom/airbnb/android/adapters/DiscoverAdapter$6;-><init>(Lcom/airbnb/android/adapters/DiscoverAdapter;Landroid/view/ViewGroup;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/LoopingViewPager;->setViewPagerClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    instance-of v0, p3, Lcom/airbnb/android/interfaces/ViewPagerAbsListView;

    if-eqz v0, :cond_55

    move-object v5, p3

    .line 299
    check-cast v5, Lcom/airbnb/android/interfaces/ViewPagerAbsListView;

    .line 301
    .local v5, "listView":Lcom/airbnb/android/interfaces/ViewPagerAbsListView;
    iget-object v9, v6, Lcom/airbnb/android/adapters/DiscoverAdapter$LocationViewHolder;->loopingViewPager:Lcom/airbnb/android/views/LoopingViewPager;

    new-instance v0, Lcom/airbnb/android/adapters/DiscoverAdapter$7;

    move-object v1, p0

    move-object v2, p1

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/android/adapters/DiscoverAdapter$7;-><init>(Lcom/airbnb/android/adapters/DiscoverAdapter;Lcom/airbnb/android/models/TravelLocationsFeedItem;Lcom/airbnb/android/adapters/TravelLocationsViewPagerAdapter;ILcom/airbnb/android/interfaces/ViewPagerAbsListView;Lcom/airbnb/android/adapters/DiscoverAdapter$LocationViewHolder;)V

    invoke-virtual {v9, v0}, Lcom/airbnb/android/views/LoopingViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 336
    .end local v5    # "listView":Lcom/airbnb/android/interfaces/ViewPagerAbsListView;
    :cond_55
    iget-object v0, p0, Lcom/airbnb/android/adapters/DiscoverAdapter;->mLocationsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 337
    iget-object v0, p0, Lcom/airbnb/android/adapters/DiscoverAdapter;->mLocationsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/adapters/DiscoverAdapter$LocationPageRecord;

    iget v8, v0, Lcom/airbnb/android/adapters/DiscoverAdapter$LocationPageRecord;->viewPagerPosition:I

    .line 342
    .local v8, "pageToSet":I
    :goto_67
    iget-object v0, v6, Lcom/airbnb/android/adapters/DiscoverAdapter$LocationViewHolder;->loopingViewPager:Lcom/airbnb/android/views/LoopingViewPager;

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoopingViewPager;->getViewPager()Lcom/airbnb/android/views/ClickableViewPager;

    move-result-object v0

    invoke-virtual {v0, v8, v10}, Lcom/airbnb/android/views/ClickableViewPager;->setCurrentItem(IZ)V

    .line 344
    return-object p2

    .line 339
    .end local v8    # "pageToSet":I
    :cond_71
    invoke-virtual {v3}, Lcom/airbnb/android/adapters/TravelLocationsViewPagerAdapter;->getCount()I

    move-result v0

    div-int/lit8 v8, v0, 0x2

    .line 340
    .restart local v8    # "pageToSet":I
    invoke-virtual {v3, v8}, Lcom/airbnb/android/adapters/TravelLocationsViewPagerAdapter;->getAdjustedPosition(I)I

    move-result v0

    invoke-virtual {v3}, Lcom/airbnb/android/adapters/TravelLocationsViewPagerAdapter;->isLoopingEnabled()Z

    move-result v1

    invoke-direct {p0, p1, v8, v0, v1}, Lcom/airbnb/android/adapters/DiscoverAdapter;->updateSelectedLocation(Lcom/airbnb/android/models/TravelLocationsFeedItem;IIZ)Lcom/airbnb/android/adapters/DiscoverAdapter$LocationPageRecord;

    goto :goto_67
.end method

.method private getVideoView(Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .registers 9
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 157
    if-nez p1, :cond_12

    .line 158
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030052

    invoke-virtual {v2, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 161
    :cond_12
    invoke-virtual {p0, p3}, Lcom/airbnb/android/adapters/DiscoverAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/VideoFeedItem;

    .line 162
    .local v1, "videoFeedItem":Lcom/airbnb/android/models/VideoFeedItem;
    const v2, 0x7f0800f0

    invoke-static {p1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/views/AirTextView;

    invoke-virtual {v1}, Lcom/airbnb/android/models/VideoFeedItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/AirTextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    const v2, 0x7f0800f1

    invoke-static {p1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/views/AirTextView;

    invoke-virtual {v1}, Lcom/airbnb/android/models/VideoFeedItem;->getSubtitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/AirTextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    const v2, 0x7f0800ef

    invoke-static {p1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/views/AirImageView;

    invoke-virtual {v1}, Lcom/airbnb/android/models/VideoFeedItem;->getPictureUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/AirImageView;->setImageUrl(Ljava/lang/String;)V

    .line 166
    const v2, 0x7f0800f2

    invoke-static {p1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 167
    .local v0, "icon":Landroid/widget/ImageView;
    const v2, 0x7f020156

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 168
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    new-instance v2, Lcom/airbnb/android/adapters/DiscoverAdapter$2;

    invoke-direct {v2, p0, v1, p3}, Lcom/airbnb/android/adapters/DiscoverAdapter$2;-><init>(Lcom/airbnb/android/adapters/DiscoverAdapter;Lcom/airbnb/android/models/VideoFeedItem;I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    return-object p1
.end method

.method private getWebLinkView(Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .registers 8
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "position"    # I

    .prologue
    .line 135
    if-nez p1, :cond_12

    .line 136
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030052

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 139
    :cond_12
    invoke-virtual {p0, p3}, Lcom/airbnb/android/adapters/DiscoverAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/WebLinkFeedItem;

    .line 140
    .local v0, "webLinkFeedItem":Lcom/airbnb/android/models/WebLinkFeedItem;
    const v1, 0x7f0800f0

    invoke-static {p1, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/AirTextView;

    invoke-virtual {v0}, Lcom/airbnb/android/models/WebLinkFeedItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/AirTextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    const v1, 0x7f0800f1

    invoke-static {p1, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/AirTextView;

    invoke-virtual {v0}, Lcom/airbnb/android/models/WebLinkFeedItem;->getSubtitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/AirTextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    const v1, 0x7f0800ef

    invoke-static {p1, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/AirImageView;

    invoke-virtual {v0}, Lcom/airbnb/android/models/WebLinkFeedItem;->getPictureUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/AirImageView;->setImageUrl(Ljava/lang/String;)V

    .line 143
    const v1, 0x7f0800f2

    invoke-static {p1, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 145
    new-instance v1, Lcom/airbnb/android/adapters/DiscoverAdapter$1;

    invoke-direct {v1, p0, v0, p3}, Lcom/airbnb/android/adapters/DiscoverAdapter$1;-><init>(Lcom/airbnb/android/adapters/DiscoverAdapter;Lcom/airbnb/android/models/WebLinkFeedItem;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    return-object p1
.end method

.method private setItemHeight(Landroid/view/View;Landroid/view/ViewGroup;Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "rowType"    # Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    .prologue
    .line 363
    sget-object v3, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->LISTING:Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    if-eq p3, v3, :cond_8

    sget-object v3, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->LOADING:Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    if-ne p3, v3, :cond_9

    .line 383
    :cond_8
    :goto_8
    return-void

    .line 368
    :cond_9
    iget v3, p0, Lcom/airbnb/android/adapters/DiscoverAdapter;->mItemHeight:I

    if-gtz v3, :cond_2b

    .line 370
    const v3, 0x3f2aaaab

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/airbnb/android/adapters/DiscoverAdapter;->mNumColumns:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v1, v3

    .line 373
    .local v1, "imageHeight":I
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0064

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    .line 374
    .local v0, "detailsBoxHeight":I
    add-int v3, v1, v0

    iput v3, p0, Lcom/airbnb/android/adapters/DiscoverAdapter;->mItemHeight:I

    .line 377
    .end local v0    # "detailsBoxHeight":I
    .end local v1    # "imageHeight":I
    :cond_2b
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsListView$LayoutParams;

    .line 378
    .local v2, "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    if-nez v2, :cond_3f

    .line 379
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    const/4 v4, -0x1

    iget v5, p0, Lcom/airbnb/android/adapters/DiscoverAdapter;->mItemHeight:I

    invoke-direct {v3, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8

    .line 381
    :cond_3f
    iget v3, p0, Lcom/airbnb/android/adapters/DiscoverAdapter;->mItemHeight:I

    iput v3, v2, Landroid/widget/AbsListView$LayoutParams;->height:I

    goto :goto_8
.end method

.method private updateSelectedLocation(Lcom/airbnb/android/models/TravelLocationsFeedItem;IIZ)Lcom/airbnb/android/adapters/DiscoverAdapter$LocationPageRecord;
    .registers 11
    .param p1, "feedItem"    # Lcom/airbnb/android/models/TravelLocationsFeedItem;
    .param p2, "viewPagerPosition"    # I
    .param p3, "locationIndex"    # I
    .param p4, "loopingEnabled"    # Z

    .prologue
    .line 348
    invoke-virtual {p1}, Lcom/airbnb/android/models/TravelLocationsFeedItem;->getLocations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/models/TravelLocation;

    .line 349
    .local v3, "selectedLocation":Lcom/airbnb/android/models/TravelLocation;
    new-instance v0, Lcom/airbnb/android/adapters/DiscoverAdapter$LocationPageRecord;

    invoke-virtual {p1}, Lcom/airbnb/android/models/TravelLocationsFeedItem;->getLoggingParams()Lcom/airbnb/android/utils/Strap;

    move-result-object v5

    move-object v1, p0

    move v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/adapters/DiscoverAdapter$LocationPageRecord;-><init>(Lcom/airbnb/android/adapters/DiscoverAdapter;ILcom/airbnb/android/models/TravelLocation;ZLcom/airbnb/android/utils/Strap;)V

    .line 350
    .local v0, "locationPageRecord":Lcom/airbnb/android/adapters/DiscoverAdapter$LocationPageRecord;
    iget-object v1, p0, Lcom/airbnb/android/adapters/DiscoverAdapter;->mLocationsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    return-object v0
.end method


# virtual methods
.method public addDiscoverData(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/interfaces/FeedItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "discoverData":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/interfaces/FeedItem;>;"
    iget-object v0, p0, Lcom/airbnb/android/adapters/DiscoverAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 94
    iget-object v0, p0, Lcom/airbnb/android/adapters/DiscoverAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 95
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/DiscoverAdapter;->notifyDataSetChanged()V

    .line 96
    return-void
.end method

.method public addDiscoverItem(ILcom/airbnb/android/interfaces/FeedItem;)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "item"    # Lcom/airbnb/android/interfaces/FeedItem;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/airbnb/android/adapters/DiscoverAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lcom/airbnb/android/adapters/DiscoverAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 88
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/DiscoverAdapter;->notifyDataSetChanged()V

    .line 89
    return-void
.end method

.method public enableLoadMore()V
    .registers 2

    .prologue
    .line 424
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/adapters/DiscoverAdapter;->mLoadMoreEnabled:Z

    .line 425
    return-void
.end method

.method public getItemAsCollection(I)Lcom/airbnb/android/models/Collection;
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/DiscoverAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/interfaces/FeedItem;

    .line 82
    .local v0, "item":Lcom/airbnb/android/interfaces/FeedItem;
    instance-of v1, v0, Lcom/airbnb/android/models/CollectionFeedItem;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/airbnb/android/models/CollectionFeedItem;

    .end local v0    # "item":Lcom/airbnb/android/interfaces/FeedItem;
    invoke-virtual {v0}, Lcom/airbnb/android/models/CollectionFeedItem;->getCollection()Lcom/airbnb/android/models/Collection;

    move-result-object v1

    :goto_10
    return-object v1

    .restart local v0    # "item":Lcom/airbnb/android/interfaces/FeedItem;
    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public getLocationPageRecord(I)Lcom/airbnb/android/adapters/DiscoverAdapter$LocationPageRecord;
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 268
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/DiscoverAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/TravelLocationsFeedItem;

    .line 269
    .local v0, "item":Lcom/airbnb/android/models/TravelLocationsFeedItem;
    iget-object v1, p0, Lcom/airbnb/android/adapters/DiscoverAdapter;->mLocationsMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/adapters/DiscoverAdapter$LocationPageRecord;

    return-object v1
.end method

.method protected getOnScrollListener(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$OnScrollListener;
    .registers 4
    .param p1, "listView"    # Landroid/widget/AbsListView;

    .prologue
    .line 490
    invoke-super {p0, p1}, Lcom/airbnb/android/adapters/WishListableAdapter;->getOnScrollListener(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    .line 492
    .local v0, "parentScrollListener":Landroid/widget/AbsListView$OnScrollListener;
    new-instance v1, Lcom/airbnb/android/adapters/DiscoverAdapter$11;

    invoke-direct {v1, p0, v0}, Lcom/airbnb/android/adapters/DiscoverAdapter$11;-><init>(Lcom/airbnb/android/adapters/DiscoverAdapter;Landroid/widget/AbsListView$OnScrollListener;)V

    return-object v1
.end method

.method public getReferralCard(Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .registers 7
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "position"    # I

    .prologue
    .line 386
    if-nez p1, :cond_2d

    .line 387
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030055

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 388
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v0, 0x7f0800f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f020203

    invoke-static {v1, v0, v2}, Lcom/airbnb/android/utils/MiscUtils;->setImageResource565(Landroid/content/res/Resources;Landroid/widget/ImageView;I)V

    .line 390
    new-instance v0, Lcom/airbnb/android/adapters/DiscoverAdapter$8;

    invoke-direct {v0, p0}, Lcom/airbnb/android/adapters/DiscoverAdapter$8;-><init>(Lcom/airbnb/android/adapters/DiscoverAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    :cond_2d
    const v0, 0x7f0800f7

    invoke-static {p1, v0}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/airbnb/android/adapters/DiscoverAdapter$9;

    invoke-direct {v1, p0, p3}, Lcom/airbnb/android/adapters/DiscoverAdapter$9;-><init>(Lcom/airbnb/android/adapters/DiscoverAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 100
    invoke-static {}, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->values()[Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/DiscoverAdapter;->getItemViewType(I)I

    move-result v1

    aget-object v6, v0, v1

    .line 103
    .local v6, "rowType":Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;
    sget-object v0, Lcom/airbnb/android/adapters/DiscoverAdapter$12;->$SwitchMap$com$airbnb$android$adapters$ListingPhotoAdapter$RowType:[I

    invoke-virtual {v6}, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5c

    .line 127
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/adapters/WishListableAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 129
    .local v7, "view":Landroid/view/View;
    :goto_19
    invoke-direct {p0, v7, p3, v6}, Lcom/airbnb/android/adapters/DiscoverAdapter;->setItemHeight(Landroid/view/View;Landroid/view/ViewGroup;Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;)V

    .line 131
    return-object v7

    .line 105
    .end local v7    # "view":Landroid/view/View;
    :pswitch_1d
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/DiscoverAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/CollectionFeedItem;

    invoke-virtual {v1}, Lcom/airbnb/android/models/CollectionFeedItem;->getCollection()Lcom/airbnb/android/models/Collection;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/android/adapters/DiscoverAdapter;->getNumColumns()I

    move-result v5

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/airbnb/android/adapters/WishListsAdapter;->getWishListView(Landroid/content/Context;Lcom/airbnb/android/models/Collection;ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v7

    .line 107
    .restart local v7    # "view":Landroid/view/View;
    goto :goto_19

    .line 109
    .end local v7    # "view":Landroid/view/View;
    :pswitch_37
    invoke-virtual {p0, p2, p3, p1}, Lcom/airbnb/android/adapters/DiscoverAdapter;->getReferralCard(Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v7

    .line 110
    .restart local v7    # "view":Landroid/view/View;
    goto :goto_19

    .line 112
    .end local v7    # "view":Landroid/view/View;
    :pswitch_3c
    invoke-direct {p0, p2, p3}, Lcom/airbnb/android/adapters/DiscoverAdapter;->getLastMinuteBookingsView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 113
    .restart local v7    # "view":Landroid/view/View;
    goto :goto_19

    .line 115
    .end local v7    # "view":Landroid/view/View;
    :pswitch_41
    invoke-direct {p0, p2, p3, p1}, Lcom/airbnb/android/adapters/DiscoverAdapter;->getEnableLastMinuteCallout(Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v7

    .line 116
    .restart local v7    # "view":Landroid/view/View;
    goto :goto_19

    .line 118
    .end local v7    # "view":Landroid/view/View;
    :pswitch_46
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/DiscoverAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/TravelLocationsFeedItem;

    invoke-direct {p0, v0, p2, p3, p1}, Lcom/airbnb/android/adapters/DiscoverAdapter;->getLocationsView(Lcom/airbnb/android/models/TravelLocationsFeedItem;Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v7

    .line 119
    .restart local v7    # "view":Landroid/view/View;
    goto :goto_19

    .line 121
    .end local v7    # "view":Landroid/view/View;
    :pswitch_51
    invoke-direct {p0, p2, p3, p1}, Lcom/airbnb/android/adapters/DiscoverAdapter;->getVideoView(Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v7

    .line 122
    .restart local v7    # "view":Landroid/view/View;
    goto :goto_19

    .line 124
    .end local v7    # "view":Landroid/view/View;
    :pswitch_56
    invoke-direct {p0, p2, p3, p1}, Lcom/airbnb/android/adapters/DiscoverAdapter;->getWebLinkView(Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v7

    .line 125
    .restart local v7    # "view":Landroid/view/View;
    goto :goto_19

    .line 103
    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_37
        :pswitch_3c
        :pswitch_41
        :pswitch_46
        :pswitch_51
        :pswitch_56
    .end packed-switch
.end method

.method public killAutoScroll()V
    .registers 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/airbnb/android/adapters/DiscoverAdapter;->mAutoScrollingViewPager:Lcom/airbnb/android/views/ClickableViewPager;

    if-eqz v0, :cond_c

    .line 461
    iget-object v0, p0, Lcom/airbnb/android/adapters/DiscoverAdapter;->mAutoScrollingViewPager:Lcom/airbnb/android/views/ClickableViewPager;

    invoke-virtual {v0}, Lcom/airbnb/android/views/ClickableViewPager;->stopScrolling()V

    .line 462
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/android/adapters/DiscoverAdapter;->mAutoScrollingViewPager:Lcom/airbnb/android/views/ClickableViewPager;

    .line 464
    :cond_c
    return-void
.end method

.method protected loadMoreListings()V
    .registers 8

    .prologue
    .line 429
    iget-object v0, p0, Lcom/airbnb/android/adapters/DiscoverAdapter;->mPopularRequest:Lcom/airbnb/android/requests/PopularRequest;

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->isQueueRunning(Lcom/android/volley/Request;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/airbnb/android/adapters/DiscoverAdapter;->mLoadMoreEnabled:Z

    if-nez v0, :cond_d

    .line 457
    :cond_c
    :goto_c
    return-void

    .line 434
    :cond_d
    iget-object v0, p0, Lcom/airbnb/android/adapters/DiscoverAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v6, v0, 0xa

    .line 435
    .local v6, "pageNumber":I
    invoke-static {v6}, Lcom/airbnb/android/analytics/DiscoverAnalytics;->trackLoadMore(I)V

    .line 437
    new-instance v0, Lcom/airbnb/android/requests/PopularRequest;

    iget-object v1, p0, Lcom/airbnb/android/adapters/DiscoverAdapter;->mItems:Ljava/util/List;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/airbnb/android/adapters/DiscoverAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_24
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/airbnb/android/adapters/DiscoverAdapter;->mServerOffsetParams:Lcom/airbnb/android/utils/Strap;

    iget-object v4, p0, Lcom/airbnb/android/adapters/DiscoverAdapter;->mLocation:Landroid/location/Location;

    new-instance v5, Lcom/airbnb/android/adapters/DiscoverAdapter$10;

    invoke-direct {v5, p0}, Lcom/airbnb/android/adapters/DiscoverAdapter$10;-><init>(Lcom/airbnb/android/adapters/DiscoverAdapter;)V

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/requests/PopularRequest;-><init>(IILcom/airbnb/android/utils/Strap;Landroid/location/Location;Lcom/airbnb/android/requests/RequestListener;)V

    iput-object v0, p0, Lcom/airbnb/android/adapters/DiscoverAdapter;->mPopularRequest:Lcom/airbnb/android/requests/PopularRequest;

    .line 456
    iget-object v0, p0, Lcom/airbnb/android/adapters/DiscoverAdapter;->mPopularRequest:Lcom/airbnb/android/requests/PopularRequest;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/PopularRequest;->execute()V

    goto :goto_c

    .line 437
    :cond_3a
    const/4 v1, 0x0

    goto :goto_24
.end method

.method public setSubsequentRequestParams(Lcom/airbnb/android/utils/Strap;Landroid/location/Location;)V
    .registers 3
    .param p1, "params"    # Lcom/airbnb/android/utils/Strap;
    .param p2, "location"    # Landroid/location/Location;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/airbnb/android/adapters/DiscoverAdapter;->mServerOffsetParams:Lcom/airbnb/android/utils/Strap;

    .line 77
    iput-object p2, p0, Lcom/airbnb/android/adapters/DiscoverAdapter;->mLocation:Landroid/location/Location;

    .line 78
    return-void
.end method
