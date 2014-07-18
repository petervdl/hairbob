.class public Lcom/airbnb/android/adapters/groups/GroupAdapter;
.super Landroid/widget/ArrayAdapter;
.source "GroupAdapter.java"

# interfaces
.implements Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$StickyHeaderAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/airbnb/android/models/groups/Group;",
        ">;",
        "Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$StickyHeaderAdapter;"
    }
.end annotation


# static fields
.field private static final MY_GROUPS_INDEX:I = -0x2

.field private static final TOP_RECOMMENDATIONS_INDEX:I = -0x1


# instance fields
.field private mGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/airbnb/android/models/groups/GroupsSection;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/groups/Group;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHeaderIndexes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/airbnb/android/models/groups/GroupsSection;",
            ">;"
        }
    .end annotation
.end field

.field private mIntroduction:Lcom/airbnb/android/models/groups/GroupsIntroduction;

.field private mMyGroupSection:Lcom/airbnb/android/models/groups/GroupsSection;

.field private mSectionOrder:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Lcom/airbnb/android/models/groups/GroupsSection;",
            ">;"
        }
    .end annotation
.end field

.field private mSortedHeaderIndexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTopRecommendationSection:Lcom/airbnb/android/models/groups/GroupsSection;

.field private mTopRecommendedGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/groups/Group;",
            ">;"
        }
    .end annotation
.end field

.field private mYourGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/groups/Group;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/groups/Group;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/groups/Group;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/airbnb/android/models/groups/GroupsSection;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/groups/Group;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p2, "yourGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/groups/Group;>;"
    .local p3, "topRecommendedGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/groups/Group;>;"
    .local p4, "infiniteRecommendationSections":Ljava/util/Map;, "Ljava/util/Map<Lcom/airbnb/android/models/groups/GroupsSection;Ljava/util/ArrayList<Lcom/airbnb/android/models/groups/Group;>;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 47
    new-instance v0, Lcom/airbnb/android/models/groups/GroupsSection;

    const/4 v1, -0x2

    const v2, 0x7f0e0284

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/models/groups/GroupsSection;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/airbnb/android/adapters/groups/GroupAdapter;->mMyGroupSection:Lcom/airbnb/android/models/groups/GroupsSection;

    .line 48
    new-instance v0, Lcom/airbnb/android/models/groups/GroupsSection;

    const/4 v1, -0x1

    const v2, 0x7f0e0285

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/models/groups/GroupsSection;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/airbnb/android/adapters/groups/GroupAdapter;->mTopRecommendationSection:Lcom/airbnb/android/models/groups/GroupsSection;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/adapters/groups/GroupAdapter;->mYourGroups:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/adapters/groups/GroupAdapter;->mTopRecommendedGroups:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/adapters/groups/GroupAdapter;->mGroups:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/adapters/groups/GroupAdapter;->mSectionOrder:Ljava/util/SortedSet;

    .line 53
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/adapters/groups/GroupAdapter;->mHeaderIndexes:Landroid/util/SparseArray;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/adapters/groups/GroupAdapter;->mSortedHeaderIndexes:Ljava/util/List;

    .line 55
    invoke-virtual {p0, p2, p3, p4}, Lcom/airbnb/android/adapters/groups/GroupAdapter;->resetGroups(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 56
    invoke-direct {p0}, Lcom/airbnb/android/adapters/groups/GroupAdapter;->recomputeHeaderIndexes()V

    .line 57
    return-void
.end method

.method private getGroupCardView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 22
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 228
    invoke-virtual/range {p0 .. p1}, Lcom/airbnb/android/adapters/groups/GroupAdapter;->getItem(I)Lcom/airbnb/android/models/groups/Group;

    move-result-object v2

    .line 229
    .local v2, "group":Lcom/airbnb/android/models/groups/Group;
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 231
    .local v1, "context":Landroid/content/Context;
    if-nez p2, :cond_18

    .line 232
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    const v13, 0x7f030141

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v13, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 234
    :cond_18
    const v12, 0x7f080369

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/airbnb/android/views/groups/MultilineBadgedTextView;

    .line 235
    .local v9, "name":Lcom/airbnb/android/views/groups/MultilineBadgedTextView;
    invoke-virtual {v2}, Lcom/airbnb/android/models/groups/Group;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Lcom/airbnb/android/models/groups/Group;->getNotificationCount()I

    move-result v13

    invoke-virtual {v9, v12, v13}, Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->update(Ljava/lang/String;I)V

    .line 237
    const v12, 0x7f08036b

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 238
    .local v6, "memberCountTextView":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d0011

    invoke-virtual {v2}, Lcom/airbnb/android/models/groups/Group;->getMembersCount()I

    move-result v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v2}, Lcom/airbnb/android/models/groups/Group;->getMembersCount()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 240
    .local v5, "memberCountText":Ljava/lang/String;
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    const v12, 0x7f080368

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/views/AirImageView;

    .line 243
    .local v3, "hero":Lcom/airbnb/android/views/AirImageView;
    invoke-virtual {v2}, Lcom/airbnb/android/models/groups/Group;->getCardImageUrl()Ljava/lang/String;

    move-result-object v10

    .line 244
    .local v10, "url":Ljava/lang/String;
    invoke-virtual {v3, v10}, Lcom/airbnb/android/views/AirImageView;->setImageUrl(Ljava/lang/String;)V

    .line 246
    const v12, 0x7f08036a

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/airbnb/android/views/PhotoStripView;

    .line 247
    .local v7, "membersView":Lcom/airbnb/android/views/PhotoStripView;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .local v11, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v2}, Lcom/airbnb/android/models/groups/Group;->getMemberships()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_84
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/airbnb/android/models/groups/Membership;

    .line 249
    .local v8, "membership":Lcom/airbnb/android/models/groups/Membership;
    invoke-virtual {v8}, Lcom/airbnb/android/models/groups/Membership;->getUser()Lcom/airbnb/android/models/User;

    move-result-object v12

    invoke-virtual {v12}, Lcom/airbnb/android/models/User;->getPictureUrlForThumbnail()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_84

    .line 251
    .end local v8    # "membership":Lcom/airbnb/android/models/groups/Membership;
    :cond_9c
    invoke-virtual {v7, v11}, Lcom/airbnb/android/views/PhotoStripView;->setImageUrls(Ljava/util/List;)V

    .line 252
    return-object p2
.end method

.method private getGroupHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 216
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 218
    .local v0, "context":Landroid/content/Context;
    if-nez p2, :cond_12

    .line 219
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0301e0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 221
    :cond_12
    invoke-direct {p0, p1}, Lcom/airbnb/android/adapters/groups/GroupAdapter;->getHeaderTitle(I)Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "text":Ljava/lang/String;
    const v3, 0x7f080512

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 223
    .local v2, "title":Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    return-object p2
.end method

.method private getHeaderTitle(I)Ljava/lang/String;
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 180
    iget-object v1, p0, Lcom/airbnb/android/adapters/groups/GroupAdapter;->mHeaderIndexes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/groups/GroupsSection;

    .line 181
    .local v0, "section":Lcom/airbnb/android/models/groups/GroupsSection;
    invoke-virtual {v0}, Lcom/airbnb/android/models/groups/GroupsSection;->getTitle()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getIntroductionHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 197
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 199
    .local v2, "context":Landroid/content/Context;
    if-nez p1, :cond_12

    .line 200
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03012c

    invoke-virtual {v4, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 202
    :cond_12
    const v4, 0x7f0800bd

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 203
    .local v1, "container":Landroid/view/View;
    iget-object v4, p0, Lcom/airbnb/android/adapters/groups/GroupAdapter;->mIntroduction:Lcom/airbnb/android/models/groups/GroupsIntroduction;

    if-nez v4, :cond_23

    .line 204
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 212
    :goto_22
    return-object p1

    .line 206
    :cond_23
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 207
    const v4, 0x7f08033f

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 208
    .local v3, "titleView":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/airbnb/android/adapters/groups/GroupAdapter;->mIntroduction:Lcom/airbnb/android/models/groups/GroupsIntroduction;

    invoke-virtual {v4}, Lcom/airbnb/android/models/groups/GroupsIntroduction;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/airbnb/android/utils/MiscUtils;->fromHtmlSafe(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    const v4, 0x7f080340

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 210
    .local v0, "bodyView":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/airbnb/android/adapters/groups/GroupAdapter;->mIntroduction:Lcom/airbnb/android/models/groups/GroupsIntroduction;

    invoke-virtual {v4}, Lcom/airbnb/android/models/groups/GroupsIntroduction;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/airbnb/android/utils/MiscUtils;->fromHtmlSafe(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_22
.end method

.method private isHeader(I)Z
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/airbnb/android/adapters/groups/GroupAdapter;->mHeaderIndexes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private recomputeHeaderIndexes()V
    .registers 7

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 97
    .local v0, "curPosition":I
    add-int/lit8 v0, v0, 0x1

    .line 98
    iget-object v4, p0, Lcom/airbnb/android/adapters/groups/GroupAdapter;->mHeaderIndexes:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 99
    iget-object v4, p0, Lcom/airbnb/android/adapters/groups/GroupAdapter;->mSortedHeaderIndexes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 100
    iget-object v4, p0, Lcom/airbnb/android/adapters/groups/GroupAdapter;->mSectionOrder:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_13
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/models/groups/GroupsSection;

    .line 101
    .local v3, "section":Lcom/airbnb/android/models/groups/GroupsSection;
    iget-object v4, p0, Lcom/airbnb/android/adapters/groups/GroupAdapter;->mGroups:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 102
    .local v1, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/Group;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_13

    .line 103
    iget-object v4, p0, Lcom/airbnb/android/adapters/groups/GroupAdapter;->mHeaderIndexes:Landroid/util/SparseArray;

    invoke-virtual {v4, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 104
    iget-object v4, p0, Lcom/airbnb/android/adapters/groups/GroupAdapter;->mSortedHeaderIndexes:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    add-int/lit8 v0, v0, 0x1

    .line 108
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_13

    .line 111
    .end local v1    # "groups":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/Group;>;"
    .end local v3    # "section":Lcom/airbnb/android/models/groups/GroupsSection;
    :cond_43
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .registers 5

    .prologue
    .line 142
    const/4 v0, 0x1

    .line 143
    .local v0, "count":I
    iget-object v3, p0, Lcom/airbnb/android/adapters/groups/GroupAdapter;->mSectionOrder:Ljava/util/SortedSet;

    invoke-interface {v3}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/groups/GroupsSection;

    .line 144
    .local v2, "section":Lcom/airbnb/android/models/groups/GroupsSection;
    iget-object v3, p0, Lcom/airbnb/android/adapters/groups/GroupAdapter;->mGroups:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 145
    iget-object v3, p0, Lcom/airbnb/android/adapters/groups/GroupAdapter;->mGroups:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    goto :goto_7

    .line 148
    .end local v2    # "section":Lcom/airbnb/android/models/groups/GroupsSection;
    :cond_31
    return v0
.end method

.method public getHeaderItemIndex(I)I
    .registers 4
    .param p1, "headerNum"    # I

    .prologue
    .line 257
    move v0, p1

    .line 258
    .local v0, "index":I
    iget-object v1, p0, Lcom/airbnb/android/adapters/groups/GroupAdapter;->mSortedHeaderIndexes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 259
    iget-object v1, p0, Lcom/airbnb/android/adapters/groups/GroupAdapter;->mSortedHeaderIndexes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 261
    :goto_15
    return v1

    :cond_16
    const/4 v1, -0x1

    goto :goto_15
.end method

.method public getItem(I)Lcom/airbnb/android/models/groups/Group;
    .registers 8
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 153
    move v0, p1

    .line 155
    .local v0, "curOffsetPosition":I
    add-int/lit8 v0, v0, -0x1

    .line 156
    iget-object v5, p0, Lcom/airbnb/android/adapters/groups/GroupAdapter;->mSectionOrder:Ljava/util/SortedSet;

    invoke-interface {v5}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/models/groups/GroupsSection;

    .line 157
    .local v3, "section":Lcom/airbnb/android/models/groups/GroupsSection;
    iget-object v5, p0, Lcom/airbnb/android/adapters/groups/GroupAdapter;->mGroups:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 158
    .local v1, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/Group;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    .line 160
    add-int/lit8 v0, v0, -0x1

    .line 161
    if-gez v0, :cond_29

    .line 171
    .end local v1    # "groups":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/Group;>;"
    .end local v3    # "section":Lcom/airbnb/android/models/groups/GroupsSection;
    :cond_28
    :goto_28
    return-object v4

    .line 164
    .restart local v1    # "groups":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/Group;>;"
    .restart local v3    # "section":Lcom/airbnb/android/models/groups/GroupsSection;
    :cond_29
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_36

    .line 165
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/models/groups/Group;

    goto :goto_28

    .line 168
    :cond_36
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v0, v5

    goto :goto_a
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/groups/GroupAdapter;->getItem(I)Lcom/airbnb/android/models/groups/Group;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 176
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 125
    if-nez p1, :cond_9

    .line 126
    sget-object v0, Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;->INTRODUCTION_HEADER:Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;->ordinal()I

    move-result v0

    .line 130
    :goto_8
    return v0

    .line 127
    :cond_9
    invoke-direct {p0, p1}, Lcom/airbnb/android/adapters/groups/GroupAdapter;->isHeader(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 128
    sget-object v0, Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;->HEADER:Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;->ordinal()I

    move-result v0

    goto :goto_8

    .line 130
    :cond_16
    sget-object v0, Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;->GROUP:Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;->ordinal()I

    move-result v0

    goto :goto_8
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/groups/GroupAdapter;->getItemViewType(I)I

    move-result v0

    .line 187
    .local v0, "viewType":I
    sget-object v1, Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;->INTRODUCTION_HEADER:Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_11

    .line 188
    invoke-direct {p0, p2, p3}, Lcom/airbnb/android/adapters/groups/GroupAdapter;->getIntroductionHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 192
    :goto_10
    return-object v1

    .line 189
    :cond_11
    sget-object v1, Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;->HEADER:Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1e

    .line 190
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/android/adapters/groups/GroupAdapter;->getGroupHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_10

    .line 192
    :cond_1e
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/android/adapters/groups/GroupAdapter;->getGroupCardView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_10
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 136
    invoke-static {}, Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;->values()[Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public isEnabled(I)Z
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/airbnb/android/adapters/groups/GroupAdapter;->isHeader(I)Z

    move-result v0

    if-nez v0, :cond_a

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isHeaderItem(I)Z
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lcom/airbnb/android/adapters/groups/GroupAdapter;->isHeader(I)Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .registers 1

    .prologue
    .line 90
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 91
    invoke-direct {p0}, Lcom/airbnb/android/adapters/groups/GroupAdapter;->recomputeHeaderIndexes()V

    .line 92
    return-void
.end method

.method public resetGroups(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/groups/Group;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/groups/Group;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/airbnb/android/models/groups/GroupsSection;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/groups/Group;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "yourGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/groups/Group;>;"
    .local p2, "topRecommendedGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/groups/Group;>;"
    .local p3, "infiniteRecommendationSections":Ljava/util/Map;, "Ljava/util/Map<Lcom/airbnb/android/models/groups/GroupsSection;Ljava/util/ArrayList<Lcom/airbnb/android/models/groups/Group;>;>;"
    iget-object v0, p0, Lcom/airbnb/android/adapters/groups/GroupAdapter;->mYourGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 62
    iget-object v0, p0, Lcom/airbnb/android/adapters/groups/GroupAdapter;->mYourGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 63
    iget-object v0, p0, Lcom/airbnb/android/adapters/groups/GroupAdapter;->mTopRecommendedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 64
    iget-object v0, p0, Lcom/airbnb/android/adapters/groups/GroupAdapter;->mTopRecommendedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 67
    iget-object v0, p0, Lcom/airbnb/android/adapters/groups/GroupAdapter;->mGroups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 69
    iget-object v0, p0, Lcom/airbnb/android/adapters/groups/GroupAdapter;->mGroups:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 71
    iget-object v0, p0, Lcom/airbnb/android/adapters/groups/GroupAdapter;->mGroups:Ljava/util/Map;

    iget-object v1, p0, Lcom/airbnb/android/adapters/groups/GroupAdapter;->mMyGroupSection:Lcom/airbnb/android/models/groups/GroupsSection;

    iget-object v2, p0, Lcom/airbnb/android/adapters/groups/GroupAdapter;->mYourGroups:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/airbnb/android/adapters/groups/GroupAdapter;->mGroups:Ljava/util/Map;

    iget-object v1, p0, Lcom/airbnb/android/adapters/groups/GroupAdapter;->mTopRecommendationSection:Lcom/airbnb/android/models/groups/GroupsSection;

    iget-object v2, p0, Lcom/airbnb/android/adapters/groups/GroupAdapter;->mTopRecommendedGroups:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/airbnb/android/adapters/groups/GroupAdapter;->mSectionOrder:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    .line 75
    iget-object v0, p0, Lcom/airbnb/android/adapters/groups/GroupAdapter;->mSectionOrder:Ljava/util/SortedSet;

    iget-object v1, p0, Lcom/airbnb/android/adapters/groups/GroupAdapter;->mGroups:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    .line 76
    return-void
.end method

.method public setIntroduction(Lcom/airbnb/android/models/groups/GroupsIntroduction;)V
    .registers 2
    .param p1, "introdution"    # Lcom/airbnb/android/models/groups/GroupsIntroduction;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/airbnb/android/adapters/groups/GroupAdapter;->mIntroduction:Lcom/airbnb/android/models/groups/GroupsIntroduction;

    .line 272
    return-void
.end method
