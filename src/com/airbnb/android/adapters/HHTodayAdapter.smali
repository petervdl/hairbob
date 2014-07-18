.class public Lcom/airbnb/android/adapters/HHTodayAdapter;
.super Lcom/airbnb/android/adapters/HHBaseAdapter;
.source "HHTodayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/adapters/HHTodayAdapter$TodayViewHolder;,
        Lcom/airbnb/android/adapters/HHTodayAdapter$RowType;
    }
.end annotation


# instance fields
.field private mTodayReservations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Reservation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/airbnb/android/adapters/HHBaseAdapter;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/adapters/HHTodayAdapter;->mTodayReservations:Ljava/util/List;

    .line 35
    return-void
.end method

.method private createUpcomingViewHolder(Landroid/view/View;)V
    .registers 3
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 113
    new-instance v0, Lcom/airbnb/android/adapters/HHTodayAdapter$TodayViewHolder;

    invoke-direct {v0, p0}, Lcom/airbnb/android/adapters/HHTodayAdapter$TodayViewHolder;-><init>(Lcom/airbnb/android/adapters/HHTodayAdapter;)V

    .line 114
    .local v0, "viewHolder":Lcom/airbnb/android/adapters/HHTodayAdapter$TodayViewHolder;
    invoke-static {v0, p1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 116
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 117
    return-void
.end method

.method private setupTodayRow(Landroid/content/Context;Landroid/view/View;Lcom/airbnb/android/models/Reservation;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "reservation"    # Lcom/airbnb/android/models/Reservation;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 120
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/adapters/HHTodayAdapter$TodayViewHolder;

    .line 122
    .local v4, "viewHolder":Lcom/airbnb/android/adapters/HHTodayAdapter$TodayViewHolder;
    iget-object v7, v4, Lcom/airbnb/android/adapters/HHTodayAdapter$TodayViewHolder;->profileImage:Lcom/airbnb/android/views/HaloImageView;

    invoke-virtual {p3}, Lcom/airbnb/android/models/Reservation;->getGuest()Lcom/airbnb/android/models/User;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/airbnb/android/views/HaloImageView;->setImageUrlForUser(Lcom/airbnb/android/models/User;)V

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/airbnb/android/utils/DateHelper;->getDateMillis(J)J

    move-result-wide v7

    invoke-virtual {p3}, Lcom/airbnb/android/models/Reservation;->getStartDate()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gtz v7, :cond_b2

    move v0, v5

    .line 126
    .local v0, "isCheckingIn":Z
    :goto_26
    iget-object v8, v4, Lcom/airbnb/android/adapters/HHTodayAdapter$TodayViewHolder;->arriveTime:Landroid/widget/TextView;

    if-eqz v0, :cond_b5

    invoke-virtual {p3}, Lcom/airbnb/android/models/Reservation;->getStartDate()Ljava/util/Date;

    move-result-object v7

    :goto_2e
    invoke-virtual {p3}, Lcom/airbnb/android/models/Reservation;->getGuest()Lcom/airbnb/android/models/User;

    move-result-object v9

    invoke-virtual {v9}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v7, v9, v0}, Lcom/airbnb/android/utils/DateHelper;->getArrivalTimeWithName(Landroid/content/Context;Ljava/util/Date;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {p3}, Lcom/airbnb/android/models/Reservation;->getStartDate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {p3}, Lcom/airbnb/android/models/Reservation;->getEndDate()Ljava/util/Date;

    move-result-object v8

    invoke-static {p1, v7, v8}, Lcom/airbnb/android/adapters/HHTodayAdapter;->getDateFormattedString(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "reservationDates":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d002d

    invoke-virtual {p3}, Lcom/airbnb/android/models/Reservation;->getGuestCount()I

    move-result v9

    new-array v10, v5, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/airbnb/android/models/Reservation;->getGuestCount()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "numGuests":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0039

    invoke-virtual {p3}, Lcom/airbnb/android/models/Reservation;->getReservedNightsCount()I

    move-result v9

    new-array v10, v5, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/airbnb/android/models/Reservation;->getReservedNightsCount()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "numNights":Ljava/lang/String;
    iget-object v7, v4, Lcom/airbnb/android/adapters/HHTodayAdapter$TodayViewHolder;->details:Landroid/widget/TextView;

    const v8, 0x7f0e021b

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v6

    aput-object v1, v9, v5

    const/4 v10, 0x2

    aput-object v2, v9, v10

    invoke-virtual {p1, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/airbnb/android/utils/MiscUtils;->fromHtmlSafe(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/HHTodayAdapter;->getNumListings()I

    move-result v7

    if-le v7, v5, :cond_bb

    .line 136
    iget-object v5, v4, Lcom/airbnb/android/adapters/HHTodayAdapter$TodayViewHolder;->listingDescription:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    iget-object v5, v4, Lcom/airbnb/android/adapters/HHTodayAdapter$TodayViewHolder;->listingDescription:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/airbnb/android/models/Reservation;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v6

    invoke-virtual {v6}, Lcom/airbnb/android/models/Listing;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :goto_b1
    return-void

    .end local v0    # "isCheckingIn":Z
    .end local v1    # "numGuests":Ljava/lang/String;
    .end local v2    # "numNights":Ljava/lang/String;
    .end local v3    # "reservationDates":Ljava/lang/String;
    :cond_b2
    move v0, v6

    .line 124
    goto/16 :goto_26

    .line 126
    .restart local v0    # "isCheckingIn":Z
    :cond_b5
    invoke-virtual {p3}, Lcom/airbnb/android/models/Reservation;->getEndDate()Ljava/util/Date;

    move-result-object v7

    goto/16 :goto_2e

    .line 139
    .restart local v1    # "numGuests":Ljava/lang/String;
    .restart local v2    # "numNights":Ljava/lang/String;
    .restart local v3    # "reservationDates":Ljava/lang/String;
    :cond_bb
    iget-object v5, v4, Lcom/airbnb/android/adapters/HHTodayAdapter$TodayViewHolder;->listingDescription:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b1
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/airbnb/android/adapters/HHTodayAdapter;->mTodayReservations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f

    iget-object v0, p0, Lcom/airbnb/android/adapters/HHTodayAdapter;->mTodayReservations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/airbnb/android/adapters/HHTodayAdapter;->mTodayReservations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 64
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/airbnb/android/adapters/HHTodayAdapter;->mTodayReservations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 40
    sget-object v0, Lcom/airbnb/android/adapters/HHTodayAdapter$RowType;->TodayEmptySection:Lcom/airbnb/android/adapters/HHTodayAdapter$RowType;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/HHTodayAdapter$RowType;->ordinal()I

    move-result v0

    .line 42
    :goto_e
    return v0

    :cond_f
    sget-object v0, Lcom/airbnb/android/adapters/HHTodayAdapter$RowType;->TodayReservation:Lcom/airbnb/android/adapters/HHTodayAdapter$RowType;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/HHTodayAdapter$RowType;->ordinal()I

    move-result v0

    goto :goto_e
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 80
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 82
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/HHTodayAdapter;->getItemViewType(I)I

    move-result v2

    .line 84
    .local v2, "type":I
    sget-object v3, Lcom/airbnb/android/adapters/HHTodayAdapter$RowType;->TodayEmptySection:Lcom/airbnb/android/adapters/HHTodayAdapter$RowType;

    invoke-virtual {v3}, Lcom/airbnb/android/adapters/HHTodayAdapter$RowType;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_22

    .line 85
    if-nez p2, :cond_1e

    .line 86
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030143

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 89
    :cond_1e
    invoke-virtual {p0, p2}, Lcom/airbnb/android/adapters/HHTodayAdapter;->setupEmptyState(Landroid/view/View;)V

    .line 101
    :goto_21
    return-object p2

    .line 91
    :cond_22
    if-nez p2, :cond_32

    .line 92
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030145

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 94
    invoke-direct {p0, p2}, Lcom/airbnb/android/adapters/HHTodayAdapter;->createUpcomingViewHolder(Landroid/view/View;)V

    .line 97
    :cond_32
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/HHTodayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Reservation;

    .line 98
    .local v1, "reservation":Lcom/airbnb/android/models/Reservation;
    invoke-direct {p0, v0, p2, v1}, Lcom/airbnb/android/adapters/HHTodayAdapter;->setupTodayRow(Landroid/content/Context;Landroid/view/View;Lcom/airbnb/android/models/Reservation;)V

    goto :goto_21
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 48
    invoke-static {}, Lcom/airbnb/android/adapters/HHTodayAdapter$RowType;->values()[Lcom/airbnb/android/adapters/HHTodayAdapter$RowType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public isEnabled(I)Z
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/HHTodayAdapter;->getItemViewType(I)I

    move-result v0

    .line 71
    .local v0, "type":I
    sget-object v1, Lcom/airbnb/android/adapters/HHTodayAdapter$RowType;->TodayEmptySection:Lcom/airbnb/android/adapters/HHTodayAdapter$RowType;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/HHTodayAdapter$RowType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_e

    .line 72
    const/4 v1, 0x0

    .line 75
    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x1

    goto :goto_d
.end method

.method public setTodayReservations(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Reservation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "today":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Reservation;>;"
    iput-object p1, p0, Lcom/airbnb/android/adapters/HHTodayAdapter;->mTodayReservations:Ljava/util/List;

    .line 145
    return-void
.end method

.method protected setupEmptyState(Landroid/view/View;)V
    .registers 6
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 105
    const v2, 0x7f0802ab

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 106
    .local v1, "textView":Landroid/widget/TextView;
    const v2, 0x7f0e0298

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 108
    const v2, 0x7f080358

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/HaloImageView;

    .line 109
    .local v0, "image":Lcom/airbnb/android/views/HaloImageView;
    const v2, 0x7f0200dd

    const v3, 0x7f0a002b

    invoke-static {v2, v3}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdWithColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/airbnb/android/views/HaloImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    return-void
.end method
