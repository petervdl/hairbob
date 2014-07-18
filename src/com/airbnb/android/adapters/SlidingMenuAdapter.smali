.class public Lcom/airbnb/android/adapters/SlidingMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "SlidingMenuAdapter.java"

# interfaces
.implements Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$StickyHeaderAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/adapters/SlidingMenuAdapter$1;,
        Lcom/airbnb/android/adapters/SlidingMenuAdapter$HeaderViewHolder;,
        Lcom/airbnb/android/adapters/SlidingMenuAdapter$ViewHolder;,
        Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuListTypes;,
        Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuHeader;,
        Lcom/airbnb/android/adapters/SlidingMenuAdapter$BottomPadding;,
        Lcom/airbnb/android/adapters/SlidingMenuAdapter$SectionPadding;,
        Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;
    }
.end annotation


# static fields
.field private static final FLAG_CAUSES_NEW_ACTIVITY:I = 0x20

.field private static final FLAG_HIDDEN:I = 0x40

.field private static final FLAG_IS_HOST_ITEM:I = 0x1

.field private static final FLAG_REQUIRES_HOST:I = 0x8

.field private static final FLAG_REQUIRES_NOT_A_HOST:I = 0x10

.field private static final FLAG_REQUIRES_NOT_SIGNED_IN:I = 0x4

.field private static final FLAG_REQUIRES_SIGN_IN:I = 0x2


# instance fields
.field private mCurrentMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mFragment:Lcom/airbnb/android/fragments/SlidingMenuFragment;

.field private mHeaderHeight:I

.field private mItemHeight:I

.field private mSecondSectionItemCount:I


# direct methods
.method public constructor <init>(Lcom/airbnb/android/fragments/SlidingMenuFragment;)V
    .registers 3
    .param p1, "fragment"    # Lcom/airbnb/android/fragments/SlidingMenuFragment;

    .prologue
    const/4 v0, -0x1

    .line 160
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 161
    iput-object p1, p0, Lcom/airbnb/android/adapters/SlidingMenuAdapter;->mFragment:Lcom/airbnb/android/fragments/SlidingMenuFragment;

    .line 162
    iput v0, p0, Lcom/airbnb/android/adapters/SlidingMenuAdapter;->mHeaderHeight:I

    .line 163
    iput v0, p0, Lcom/airbnb/android/adapters/SlidingMenuAdapter;->mItemHeight:I

    .line 164
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/SlidingMenuAdapter;->notifyDataSetChanged()V

    .line 165
    return-void
.end method

.method private populateCurrentMenuItems(Landroid/content/Context;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x0

    const/4 v3, 0x1

    const/4 v9, 0x0

    .line 174
    invoke-static {p1}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    .line 176
    .local v0, "api":Lcom/airbnb/android/AirbnbApi;
    invoke-static {}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->values()[Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    move-result-object v8

    .line 177
    .local v8, "menuItems":[Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;
    new-instance v10, Ljava/util/ArrayList;

    array-length v11, v8

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, p0, Lcom/airbnb/android/adapters/SlidingMenuAdapter;->mCurrentMenuItems:Ljava/util/List;

    .line 179
    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->isCurrentUserAuthorized()Z

    move-result v5

    .line 180
    .local v5, "isSignedIn":Z
    if-eqz v5, :cond_54

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v10

    invoke-virtual {v10}, Lcom/airbnb/android/models/User;->getTotalListingsCount()I

    move-result v10

    if-lez v10, :cond_54

    move v4, v3

    .line 181
    .local v4, "isHost":Z
    :goto_24
    if-eqz v4, :cond_56

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v10

    invoke-virtual {v10}, Lcom/airbnb/android/models/User;->getListingsCount()I

    move-result v10

    if-lez v10, :cond_56

    .line 183
    .local v3, "isActiveHost":Z
    :goto_30
    iget-object v10, p0, Lcom/airbnb/android/adapters/SlidingMenuAdapter;->mCurrentMenuItems:Ljava/util/List;

    if-eqz v3, :cond_58

    sget-object v9, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuHeader;->Host:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuHeader;

    :goto_36
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    move-object v1, v8

    .local v1, "arr$":[Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_3c
    if-ge v2, v7, :cond_5b

    aget-object v6, v1, v2

    .line 185
    .local v6, "item":Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;
    invoke-virtual {v6, v5, v4}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->shouldIncludeItem(ZZ)Z

    move-result v9

    if-eqz v9, :cond_51

    invoke-virtual {v6}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->isHostItem()Z

    move-result v9

    if-ne v3, v9, :cond_51

    .line 186
    iget-object v9, p0, Lcom/airbnb/android/adapters/SlidingMenuAdapter;->mCurrentMenuItems:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .end local v1    # "arr$":[Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;
    .end local v2    # "i$":I
    .end local v3    # "isActiveHost":Z
    .end local v4    # "isHost":Z
    .end local v6    # "item":Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;
    .end local v7    # "len$":I
    :cond_54
    move v4, v9

    .line 180
    goto :goto_24

    .restart local v4    # "isHost":Z
    :cond_56
    move v3, v9

    .line 181
    goto :goto_30

    .line 183
    .restart local v3    # "isActiveHost":Z
    :cond_58
    sget-object v9, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuHeader;->Travel:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuHeader;

    goto :goto_36

    .line 190
    .restart local v1    # "arr$":[Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;
    .restart local v2    # "i$":I
    .restart local v7    # "len$":I
    :cond_5b
    iget-object v9, p0, Lcom/airbnb/android/adapters/SlidingMenuAdapter;->mCurrentMenuItems:Ljava/util/List;

    new-instance v10, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SectionPadding;

    invoke-direct {v10, p0, v12}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SectionPadding;-><init>(Lcom/airbnb/android/adapters/SlidingMenuAdapter;Lcom/airbnb/android/adapters/SlidingMenuAdapter$1;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v10, p0, Lcom/airbnb/android/adapters/SlidingMenuAdapter;->mCurrentMenuItems:Ljava/util/List;

    if-eqz v3, :cond_8f

    sget-object v9, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuHeader;->Travel:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuHeader;

    :goto_6b
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    move-object v1, v8

    array-length v7, v1

    const/4 v2, 0x0

    :goto_71
    if-ge v2, v7, :cond_92

    aget-object v6, v1, v2

    .line 194
    .restart local v6    # "item":Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;
    invoke-virtual {v6, v5, v4}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->shouldIncludeItem(ZZ)Z

    move-result v9

    if-eqz v9, :cond_8c

    invoke-virtual {v6}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->isHostItem()Z

    move-result v9

    if-eq v3, v9, :cond_8c

    .line 195
    iget-object v9, p0, Lcom/airbnb/android/adapters/SlidingMenuAdapter;->mCurrentMenuItems:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    iget v9, p0, Lcom/airbnb/android/adapters/SlidingMenuAdapter;->mSecondSectionItemCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/airbnb/android/adapters/SlidingMenuAdapter;->mSecondSectionItemCount:I

    .line 193
    :cond_8c
    add-int/lit8 v2, v2, 0x1

    goto :goto_71

    .line 191
    .end local v6    # "item":Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;
    :cond_8f
    sget-object v9, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuHeader;->Host:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuHeader;

    goto :goto_6b

    .line 200
    :cond_92
    iget-object v9, p0, Lcom/airbnb/android/adapters/SlidingMenuAdapter;->mCurrentMenuItems:Ljava/util/List;

    new-instance v10, Lcom/airbnb/android/adapters/SlidingMenuAdapter$BottomPadding;

    invoke-direct {v10, p0, v12}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$BottomPadding;-><init>(Lcom/airbnb/android/adapters/SlidingMenuAdapter;Lcom/airbnb/android/adapters/SlidingMenuAdapter$1;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    return-void
.end method

.method private setupHeaderRow(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 302
    iget-object v3, p0, Lcom/airbnb/android/adapters/SlidingMenuAdapter;->mCurrentMenuItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .local v1, "o":Ljava/lang/Object;
    move-object v0, v1

    .line 303
    check-cast v0, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuHeader;

    .line 305
    .local v0, "header":Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuHeader;
    if-nez p2, :cond_2f

    .line 306
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03012e

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 308
    new-instance v2, Lcom/airbnb/android/adapters/SlidingMenuAdapter$HeaderViewHolder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$HeaderViewHolder;-><init>(Lcom/airbnb/android/adapters/SlidingMenuAdapter$1;)V

    .line 309
    .local v2, "viewHolder":Lcom/airbnb/android/adapters/SlidingMenuAdapter$HeaderViewHolder;
    const v3, 0x7f08006c

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/airbnb/android/adapters/SlidingMenuAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 311
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 314
    .end local v2    # "viewHolder":Lcom/airbnb/android/adapters/SlidingMenuAdapter$HeaderViewHolder;
    :cond_2f
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/adapters/SlidingMenuAdapter$HeaderViewHolder;

    .line 316
    .restart local v2    # "viewHolder":Lcom/airbnb/android/adapters/SlidingMenuAdapter$HeaderViewHolder;
    iget-object v4, v2, Lcom/airbnb/android/adapters/SlidingMenuAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    sget-object v3, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuHeader;->Host:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuHeader;

    if-ne v3, v0, :cond_4f

    const v3, 0x7f0e0572

    :goto_3e
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    .line 318
    iget v3, p0, Lcom/airbnb/android/adapters/SlidingMenuAdapter;->mHeaderHeight:I

    if-gtz v3, :cond_4e

    .line 319
    invoke-virtual {p2, v5, v5}, Landroid/view/View;->measure(II)V

    .line 320
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Lcom/airbnb/android/adapters/SlidingMenuAdapter;->mHeaderHeight:I

    .line 323
    :cond_4e
    return-object p2

    .line 316
    :cond_4f
    const v3, 0x7f0e0573

    goto :goto_3e
.end method

.method private setupItemRow(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    .line 327
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 329
    .local v1, "context":Landroid/content/Context;
    if-nez p2, :cond_31

    .line 330
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v9, 0x7f030163

    invoke-virtual {v7, v9, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 331
    new-instance v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$ViewHolder;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$ViewHolder;-><init>(Lcom/airbnb/android/adapters/SlidingMenuAdapter$1;)V

    .line 332
    .local v6, "viewHolder":Lcom/airbnb/android/adapters/SlidingMenuAdapter$ViewHolder;
    const v7, 0x7f0803aa

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$ViewHolder;->mSectionTitle:Landroid/widget/TextView;

    .line 333
    const v7, 0x7f080112

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$ViewHolder;->mNotificationCount:Landroid/widget/TextView;

    .line 334
    invoke-virtual {p2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 337
    .end local v6    # "viewHolder":Lcom/airbnb/android/adapters/SlidingMenuAdapter$ViewHolder;
    :cond_31
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$ViewHolder;

    .line 338
    .restart local v6    # "viewHolder":Lcom/airbnb/android/adapters/SlidingMenuAdapter$ViewHolder;
    iget-object v7, p0, Lcom/airbnb/android/adapters/SlidingMenuAdapter;->mCurrentMenuItems:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .local v5, "o":Ljava/lang/Object;
    move-object v2, v5

    .line 339
    check-cast v2, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    .line 341
    .local v2, "item":Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;
    iget-object v7, v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$ViewHolder;->mSectionTitle:Landroid/widget/TextView;

    # getter for: Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->mNameId:I
    invoke-static {v2}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->access$400(Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(I)V

    .line 342
    iget-object v7, p0, Lcom/airbnb/android/adapters/SlidingMenuAdapter;->mFragment:Lcom/airbnb/android/fragments/SlidingMenuFragment;

    invoke-virtual {v7}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->getCurrentMenuItem()Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    move-result-object v7

    if-ne v2, v7, :cond_b0

    .line 343
    iget-object v7, v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$ViewHolder;->mSectionTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a002b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 348
    :goto_61
    invoke-static {v1}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v7

    invoke-virtual {v7}, Lcom/airbnb/android/AirbnbApi;->getBadgeCount()Lcom/airbnb/android/models/BadgeCount;

    move-result-object v0

    .line 349
    .local v0, "badges":Lcom/airbnb/android/models/BadgeCount;
    sget-object v7, Lcom/airbnb/android/adapters/SlidingMenuAdapter$1;->$SwitchMap$com$airbnb$android$adapters$SlidingMenuAdapter$SlidingMenuItem:[I

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->ordinal()I

    move-result v9

    aget v7, v7, v9

    packed-switch v7, :pswitch_data_f8

    .line 360
    iget-object v7, v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$ViewHolder;->mNotificationCount:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 364
    :goto_7b
    iget v7, p0, Lcom/airbnb/android/adapters/SlidingMenuAdapter;->mItemHeight:I

    if-gtz v7, :cond_88

    .line 365
    invoke-virtual {p2, v8, v8}, Landroid/view/View;->measure(II)V

    .line 366
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v7

    iput v7, p0, Lcom/airbnb/android/adapters/SlidingMenuAdapter;->mItemHeight:I

    .line 370
    :cond_88
    const/4 v4, 0x0

    .line 371
    .local v4, "notifWidth":I
    iget-object v7, v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$ViewHolder;->mNotificationCount:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getWidth()I

    move-result v7

    if-lez v7, :cond_eb

    .line 372
    iget-object v7, v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$ViewHolder;->mNotificationCount:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    .line 378
    :goto_97
    iget-object v7, v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$ViewHolder;->mNotificationCount:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_af

    .line 379
    iget-object v7, v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$ViewHolder;->mNotificationCount:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 380
    .local v3, "notifParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v7, v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$ViewHolder;->mSectionTitle:Landroid/widget/TextView;

    iget v9, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v9, v4

    invoke-virtual {v7, v8, v8, v9, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 383
    .end local v3    # "notifParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_af
    return-object p2

    .line 345
    .end local v0    # "badges":Lcom/airbnb/android/models/BadgeCount;
    .end local v4    # "notifWidth":I
    :cond_b0
    iget-object v7, v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$ViewHolder;->mSectionTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0022

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_61

    .line 351
    .restart local v0    # "badges":Lcom/airbnb/android/models/BadgeCount;
    :pswitch_c1
    iget-object v9, v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$ViewHolder;->mNotificationCount:Landroid/widget/TextView;

    if-eqz v0, :cond_cd

    invoke-virtual {v0}, Lcom/airbnb/android/models/BadgeCount;->getTravelInbox()I

    move-result v7

    :goto_c9
    invoke-direct {p0, v9, v7}, Lcom/airbnb/android/adapters/SlidingMenuAdapter;->updateNotificationCount(Landroid/widget/TextView;I)V

    goto :goto_7b

    :cond_cd
    move v7, v8

    goto :goto_c9

    .line 354
    :pswitch_cf
    iget-object v9, v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$ViewHolder;->mNotificationCount:Landroid/widget/TextView;

    if-eqz v0, :cond_db

    invoke-virtual {v0}, Lcom/airbnb/android/models/BadgeCount;->getHostGroups()I

    move-result v7

    :goto_d7
    invoke-direct {p0, v9, v7}, Lcom/airbnb/android/adapters/SlidingMenuAdapter;->updateNotificationCount(Landroid/widget/TextView;I)V

    goto :goto_7b

    :cond_db
    move v7, v8

    goto :goto_d7

    .line 357
    :pswitch_dd
    iget-object v9, v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$ViewHolder;->mNotificationCount:Landroid/widget/TextView;

    if-eqz v0, :cond_e9

    invoke-virtual {v0}, Lcom/airbnb/android/models/BadgeCount;->getHostHome()I

    move-result v7

    :goto_e5
    invoke-direct {p0, v9, v7}, Lcom/airbnb/android/adapters/SlidingMenuAdapter;->updateNotificationCount(Landroid/widget/TextView;I)V

    goto :goto_7b

    :cond_e9
    move v7, v8

    goto :goto_e5

    .line 374
    .restart local v4    # "notifWidth":I
    :cond_eb
    iget-object v7, v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$ViewHolder;->mNotificationCount:Landroid/widget/TextView;

    invoke-virtual {v7, v8, v8}, Landroid/widget/TextView;->measure(II)V

    .line 375
    iget-object v7, v6, Lcom/airbnb/android/adapters/SlidingMenuAdapter$ViewHolder;->mNotificationCount:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    goto :goto_97

    .line 349
    nop

    :pswitch_data_f8
    .packed-switch 0x1
        :pswitch_c1
        :pswitch_cf
        :pswitch_dd
    .end packed-switch
.end method

.method private setupPaddingRow(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x0

    .line 283
    if-nez p2, :cond_14

    .line 284
    new-instance p2, Landroid/view/View;

    .end local p2    # "convertView":Landroid/view/View;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 285
    .restart local p2    # "convertView":Landroid/view/View;
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    :cond_14
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    if-lez v1, :cond_3a

    iget v1, p0, Lcom/airbnb/android/adapters/SlidingMenuAdapter;->mHeaderHeight:I

    if-lez v1, :cond_3a

    iget v1, p0, Lcom/airbnb/android/adapters/SlidingMenuAdapter;->mItemHeight:I

    if-lez v1, :cond_3a

    .line 289
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/airbnb/android/adapters/SlidingMenuAdapter;->mHeaderHeight:I

    sub-int v0, v1, v2

    .line 290
    .local v0, "totalHeight":I
    iget v1, p0, Lcom/airbnb/android/adapters/SlidingMenuAdapter;->mItemHeight:I

    iget v2, p0, Lcom/airbnb/android/adapters/SlidingMenuAdapter;->mSecondSectionItemCount:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 291
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 296
    .end local v0    # "totalHeight":I
    :goto_36
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 298
    return-object p2

    .line 293
    :cond_3a
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_36
.end method

.method private setupSectionDividerRow(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 274
    if-nez p2, :cond_12

    .line 275
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03012f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 278
    :cond_12
    return-object p2
.end method

.method private updateNotificationCount(Landroid/widget/TextView;I)V
    .registers 4
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "count"    # I

    .prologue
    .line 387
    if-lez p2, :cond_e

    .line 388
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 389
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    :goto_d
    return-void

    .line 391
    :cond_e
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_d
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/airbnb/android/adapters/SlidingMenuAdapter;->mCurrentMenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderItemIndex(I)I
    .registers 6
    .param p1, "headerNum"    # I

    .prologue
    .line 397
    const/4 v1, 0x0

    .line 398
    .local v1, "index":I
    const/4 v2, -0x1

    .line 399
    .local v2, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/SlidingMenuAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_17

    if-gt v1, p1, :cond_17

    .line 400
    invoke-virtual {p0, v0}, Lcom/airbnb/android/adapters/SlidingMenuAdapter;->isHeaderItem(I)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 401
    add-int/lit8 v1, v1, 0x1

    .line 402
    move v2, v0

    .line 399
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 405
    :cond_17
    return v2
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 217
    iget-object v0, p0, Lcom/airbnb/android/adapters/SlidingMenuAdapter;->mCurrentMenuItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 241
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 222
    const-class v0, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/SlidingMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 223
    sget-object v0, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuListTypes;->Item:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuListTypes;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuListTypes;->ordinal()I

    move-result v0

    .line 229
    :goto_12
    return v0

    .line 224
    :cond_13
    const-class v0, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuHeader;

    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/SlidingMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 225
    sget-object v0, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuListTypes;->Header:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuListTypes;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuListTypes;->ordinal()I

    move-result v0

    goto :goto_12

    .line 226
    :cond_26
    const-class v0, Lcom/airbnb/android/adapters/SlidingMenuAdapter$BottomPadding;

    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/SlidingMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 227
    sget-object v0, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuListTypes;->BottomPadding:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuListTypes;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuListTypes;->ordinal()I

    move-result v0

    goto :goto_12

    .line 229
    :cond_39
    sget-object v0, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuListTypes;->SectionPadding:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuListTypes;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuListTypes;->ordinal()I

    move-result v0

    goto :goto_12
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 251
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/SlidingMenuAdapter;->getItemViewType(I)I

    move-result v1

    .line 253
    .local v1, "viewType":I
    invoke-static {}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuListTypes;->values()[Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuListTypes;

    move-result-object v2

    aget-object v0, v2, v1

    .line 254
    .local v0, "type":Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuListTypes;
    sget-object v2, Lcom/airbnb/android/adapters/SlidingMenuAdapter$1;->$SwitchMap$com$airbnb$android$adapters$SlidingMenuAdapter$SlidingMenuListTypes:[I

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuListTypes;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_2a

    .line 270
    :goto_15
    return-object p2

    .line 256
    :pswitch_16
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/android/adapters/SlidingMenuAdapter;->setupItemRow(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 257
    goto :goto_15

    .line 259
    :pswitch_1b
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/android/adapters/SlidingMenuAdapter;->setupHeaderRow(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 260
    goto :goto_15

    .line 262
    :pswitch_20
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/android/adapters/SlidingMenuAdapter;->setupPaddingRow(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 263
    goto :goto_15

    .line 265
    :pswitch_25
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/android/adapters/SlidingMenuAdapter;->setupSectionDividerRow(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 266
    goto :goto_15

    .line 254
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_16
        :pswitch_1b
        :pswitch_20
        :pswitch_25
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 236
    invoke-static {}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuListTypes;->values()[Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuListTypes;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public isEnabled(I)Z
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 246
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/SlidingMenuAdapter;->getItemViewType(I)I

    move-result v0

    sget-object v1, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuListTypes;->Item:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuListTypes;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuListTypes;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isHeaderItem(I)Z
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 410
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/SlidingMenuAdapter;->getItemViewType(I)I

    move-result v0

    sget-object v1, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuListTypes;->Header:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuListTypes;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuListTypes;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public notifyDataSetChanged()V
    .registers 2

    .prologue
    .line 205
    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/android/adapters/SlidingMenuAdapter;->mSecondSectionItemCount:I

    .line 206
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/airbnb/android/adapters/SlidingMenuAdapter;->populateCurrentMenuItems(Landroid/content/Context;)V

    .line 207
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 208
    return-void
.end method
