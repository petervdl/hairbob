.class public Lcom/airbnb/android/adapters/ROPagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "ROPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;,
        Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;
    }
.end annotation


# instance fields
.field private mContent:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;",
            ">;"
        }
    .end annotation
.end field

.field private mReservation:Lcom/airbnb/android/models/Reservation;

.field private mSingleTab:Z

.field private mWideMode:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Landroid/content/Context;Lcom/airbnb/android/views/VerboseScrollView$ScrollViewOnScrollListener;Landroid/widget/AbsListView$OnScrollListener;IIZLcom/airbnb/android/models/Reservation;Lcom/airbnb/android/models/MessageThread;Lcom/airbnb/android/models/User;Z)V
    .registers 18
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "scrollViewScrollListener"    # Lcom/airbnb/android/views/VerboseScrollView$ScrollViewOnScrollListener;
    .param p4, "listScrollListener"    # Landroid/widget/AbsListView$OnScrollListener;
    .param p5, "topImageHeight"    # I
    .param p6, "tabBarHeight"    # I
    .param p7, "wideMode"    # Z
    .param p8, "reservation"    # Lcom/airbnb/android/models/Reservation;
    .param p9, "messageThread"    # Lcom/airbnb/android/models/MessageThread;
    .param p10, "user"    # Lcom/airbnb/android/models/User;
    .param p11, "singleTab"    # Z

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 78
    new-instance v4, Landroid/support/v4/util/SparseArrayCompat;

    invoke-static {}, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->values()[Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    move-result-object v5

    array-length v5, v5

    invoke-direct {v4, v5}, Landroid/support/v4/util/SparseArrayCompat;-><init>(I)V

    iput-object v4, p0, Lcom/airbnb/android/adapters/ROPagerAdapter;->mContent:Landroid/support/v4/util/SparseArrayCompat;

    .line 79
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v2

    .line 80
    .local v2, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    if-eqz v2, :cond_3a

    .line 81
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3a

    .line 82
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 84
    .local v1, "f":Landroid/support/v4/app/Fragment;
    instance-of v4, v1, Lcom/airbnb/android/fragments/ROMessageFragment;

    if-eqz v4, :cond_36

    const-string/jumbo v4, "tablet_mode"

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 81
    :goto_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 88
    :cond_36
    invoke-direct {p0, v1, v3}, Lcom/airbnb/android/adapters/ROPagerAdapter;->cacheItem(Ljava/lang/Object;I)V

    goto :goto_33

    .line 91
    .end local v1    # "f":Landroid/support/v4/app/Fragment;
    .end local v3    # "i":I
    :cond_3a
    iput-boolean p7, p0, Lcom/airbnb/android/adapters/ROPagerAdapter;->mWideMode:Z

    .line 93
    iput-object p8, p0, Lcom/airbnb/android/adapters/ROPagerAdapter;->mReservation:Lcom/airbnb/android/models/Reservation;

    .line 94
    move/from16 v0, p11

    iput-boolean v0, p0, Lcom/airbnb/android/adapters/ROPagerAdapter;->mSingleTab:Z

    .line 95
    return-void
.end method

.method private cacheItem(Ljava/lang/Object;I)V
    .registers 6
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "position"    # I

    .prologue
    .line 190
    instance-of v2, p1, Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;

    if-eqz v2, :cond_10

    move-object v1, p1

    .line 191
    check-cast v1, Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;

    .line 192
    .local v1, "f":Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;
    invoke-direct {p0, p2, p1}, Lcom/airbnb/android/adapters/ROPagerAdapter;->getAdjustedPosition(ILjava/lang/Object;)I

    move-result v0

    .line 193
    .local v0, "adjustedPosition":I
    iget-object v2, p0, Lcom/airbnb/android/adapters/ROPagerAdapter;->mContent:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2, v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 195
    .end local v0    # "adjustedPosition":I
    .end local v1    # "f":Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;
    :cond_10
    return-void
.end method

.method private getAdjustedPosition(ILjava/lang/Object;)I
    .registers 8
    .param p1, "position"    # I
    .param p2, "frag"    # Ljava/lang/Object;

    .prologue
    .line 161
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "className":Ljava/lang/String;
    sget-object v2, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->Itinerary:Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->getFragmentClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 164
    sget-object v2, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->Itinerary:Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->ordinal()I

    move-result v0

    .line 172
    .local v0, "adjustedPosition":I
    :goto_1a
    return v0

    .line 165
    .end local v0    # "adjustedPosition":I
    :cond_1b
    sget-object v2, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->Profile:Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->getFragmentClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 166
    sget-object v2, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->Profile:Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->ordinal()I

    move-result v0

    .restart local v0    # "adjustedPosition":I
    goto :goto_1a

    .line 167
    .end local v0    # "adjustedPosition":I
    :cond_2e
    sget-object v2, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->Message:Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->getFragmentClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 168
    sget-object v2, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->Message:Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->ordinal()I

    move-result v0

    .restart local v0    # "adjustedPosition":I
    goto :goto_1a

    .line 170
    .end local v0    # "adjustedPosition":I
    :cond_41
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 184
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentStatePagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lcom/airbnb/android/adapters/ROPagerAdapter;->mContent:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p2}, Landroid/support/v4/util/SparseArrayCompat;->removeAt(I)V

    .line 187
    return-void
.end method

.method public getCachedFragment(I)Landroid/support/v4/app/Fragment;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 198
    iget-object v0, p0, Lcom/airbnb/android/adapters/ROPagerAdapter;->mContent:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public getCount()I
    .registers 4

    .prologue
    .line 141
    iget-boolean v2, p0, Lcom/airbnb/android/adapters/ROPagerAdapter;->mSingleTab:Z

    if-eqz v2, :cond_6

    .line 142
    const/4 v0, 0x1

    .line 150
    :goto_5
    return v0

    .line 144
    :cond_6
    invoke-static {}, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->values()[Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    move-result-object v2

    array-length v0, v2

    .line 146
    .local v0, "count":I
    iget-boolean v2, p0, Lcom/airbnb/android/adapters/ROPagerAdapter;->mWideMode:Z

    if-eqz v2, :cond_11

    .line 147
    add-int/lit8 v0, v0, -0x1

    .line 150
    :cond_11
    iget-object v2, p0, Lcom/airbnb/android/adapters/ROPagerAdapter;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-eqz v2, :cond_17

    move v1, v0

    .end local v0    # "count":I
    .local v1, "count":I
    goto :goto_5

    .end local v1    # "count":I
    .restart local v0    # "count":I
    :cond_17
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_5
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .registers 6
    .param p1, "position"    # I

    .prologue
    .line 100
    sget-object v1, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->Itinerary:Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    invoke-virtual {p0}, Lcom/airbnb/android/adapters/ROPagerAdapter;->hasItinerary()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->getIndex(Z)I

    move-result v1

    if-ne p1, v1, :cond_1d

    .line 101
    sget-object v1, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->Itinerary:Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/airbnb/android/adapters/ROPagerAdapter;->getCachedFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 102
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-nez v0, :cond_1c

    .line 103
    invoke-static {}, Lcom/airbnb/android/fragments/ROItineraryFragment;->newInstance()Lcom/airbnb/android/fragments/ROItineraryFragment;

    move-result-object v0

    .line 118
    :cond_1c
    :goto_1c
    return-object v0

    .line 105
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_1d
    sget-object v1, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->Profile:Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    invoke-virtual {p0}, Lcom/airbnb/android/adapters/ROPagerAdapter;->hasItinerary()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->getIndex(Z)I

    move-result v1

    if-ne p1, v1, :cond_3b

    .line 106
    sget-object v1, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->Profile:Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/airbnb/android/adapters/ROPagerAdapter;->getCachedFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 107
    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    if-nez v0, :cond_1c

    .line 108
    new-instance v0, Lcom/airbnb/android/fragments/ROProfileFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v0}, Lcom/airbnb/android/fragments/ROProfileFragment;-><init>()V

    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    goto :goto_1c

    .line 110
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_3b
    sget-object v1, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->Message:Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    invoke-virtual {p0}, Lcom/airbnb/android/adapters/ROPagerAdapter;->hasItinerary()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->getIndex(Z)I

    move-result v1

    if-ne p1, v1, :cond_58

    .line 111
    sget-object v1, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->Message:Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/airbnb/android/adapters/ROPagerAdapter;->getCachedFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 112
    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    if-nez v0, :cond_1c

    .line 113
    invoke-static {}, Lcom/airbnb/android/fragments/ROMessageFragment;->newInstance()Lcom/airbnb/android/fragments/ROMessageFragment;

    move-result-object v0

    goto :goto_1c

    .line 116
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_58
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid position for RO fragment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 136
    const/4 v0, -0x2

    return v0
.end method

.method public getPageIcon(I)I
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 122
    sget-object v0, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->Itinerary:Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    invoke-virtual {p0}, Lcom/airbnb/android/adapters/ROPagerAdapter;->hasItinerary()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->getIndex(Z)I

    move-result v0

    if-ne p1, v0, :cond_13

    .line 123
    sget-object v0, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->Itinerary:Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    # getter for: Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->mIconId:I
    invoke-static {v0}, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->access$000(Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;)I

    move-result v0

    .line 127
    :goto_12
    return v0

    .line 124
    :cond_13
    sget-object v0, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->Profile:Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    invoke-virtual {p0}, Lcom/airbnb/android/adapters/ROPagerAdapter;->hasItinerary()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->getIndex(Z)I

    move-result v0

    if-ne p1, v0, :cond_26

    .line 125
    sget-object v0, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->Profile:Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    # getter for: Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->mIconId:I
    invoke-static {v0}, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->access$000(Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;)I

    move-result v0

    goto :goto_12

    .line 126
    :cond_26
    sget-object v0, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->Message:Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    invoke-virtual {p0}, Lcom/airbnb/android/adapters/ROPagerAdapter;->hasItinerary()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->getIndex(Z)I

    move-result v0

    if-ne p1, v0, :cond_39

    .line 127
    sget-object v0, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->Message:Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    # getter for: Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->mIconId:I
    invoke-static {v0}, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->access$000(Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;)I

    move-result v0

    goto :goto_12

    .line 129
    :cond_39
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid position for RO fragment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTabHolderScrollingContent()Landroid/support/v4/util/SparseArrayCompat;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/airbnb/android/adapters/ROPagerAdapter;->mContent:Landroid/support/v4/util/SparseArrayCompat;

    return-object v0
.end method

.method public hasItinerary()Z
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/airbnb/android/adapters/ROPagerAdapter;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 177
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    .line 178
    .local v0, "item":Ljava/lang/Object;
    invoke-direct {p0, v0, p2}, Lcom/airbnb/android/adapters/ROPagerAdapter;->cacheItem(Ljava/lang/Object;I)V

    .line 179
    return-object v0
.end method

.method public notifyDataSetChanged()V
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/airbnb/android/adapters/ROPagerAdapter;->mContent:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 217
    invoke-super {p0}, Landroid/support/v4/app/FragmentStatePagerAdapter;->notifyDataSetChanged()V

    .line 218
    return-void
.end method

.method public setSingleTab(Z)V
    .registers 2
    .param p1, "singleTab"    # Z

    .prologue
    .line 210
    iput-boolean p1, p0, Lcom/airbnb/android/adapters/ROPagerAdapter;->mSingleTab:Z

    .line 211
    return-void
.end method
