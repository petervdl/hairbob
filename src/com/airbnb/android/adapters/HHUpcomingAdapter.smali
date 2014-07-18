.class public Lcom/airbnb/android/adapters/HHUpcomingAdapter;
.super Lcom/airbnb/android/adapters/HHBaseAdapter;
.source "HHUpcomingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/adapters/HHUpcomingAdapter$UpcomingViewHolder;
    }
.end annotation


# instance fields
.field private mUpcoming:Ljava/util/List;
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
    .line 27
    invoke-direct {p0}, Lcom/airbnb/android/adapters/HHBaseAdapter;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/adapters/HHUpcomingAdapter;->mUpcoming:Ljava/util/List;

    .line 30
    return-void
.end method

.method private createUpcomingViewHolder(Landroid/view/View;)V
    .registers 3
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 69
    new-instance v0, Lcom/airbnb/android/adapters/HHUpcomingAdapter$UpcomingViewHolder;

    invoke-direct {v0, p0}, Lcom/airbnb/android/adapters/HHUpcomingAdapter$UpcomingViewHolder;-><init>(Lcom/airbnb/android/adapters/HHUpcomingAdapter;)V

    .line 70
    .local v0, "viewHolder":Lcom/airbnb/android/adapters/HHUpcomingAdapter$UpcomingViewHolder;
    invoke-static {v0, p1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method private setupUpcomingRow(Landroid/content/Context;Landroid/view/View;Lcom/airbnb/android/models/Reservation;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "reservation"    # Lcom/airbnb/android/models/Reservation;

    .prologue
    .line 76
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/android/adapters/HHUpcomingAdapter$UpcomingViewHolder;

    .line 78
    .local v5, "viewHolder":Lcom/airbnb/android/adapters/HHUpcomingAdapter$UpcomingViewHolder;
    iget-object v6, v5, Lcom/airbnb/android/adapters/HHUpcomingAdapter$UpcomingViewHolder;->profileImage:Lcom/airbnb/android/views/HaloImageView;

    invoke-virtual {p3}, Lcom/airbnb/android/models/Reservation;->getGuest()Lcom/airbnb/android/models/User;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/airbnb/android/views/HaloImageView;->setImageUrlForUser(Lcom/airbnb/android/models/User;)V

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/airbnb/android/utils/DateHelper;->getDateMillis(J)J

    move-result-wide v6

    invoke-virtual {p3}, Lcom/airbnb/android/models/Reservation;->getStartDate()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gtz v6, :cond_b3

    const/4 v0, 0x1

    .line 82
    .local v0, "isCheckingIn":Z
    :goto_24
    iget-object v7, v5, Lcom/airbnb/android/adapters/HHUpcomingAdapter$UpcomingViewHolder;->arriveTime:Landroid/widget/TextView;

    if-eqz v0, :cond_b6

    invoke-virtual {p3}, Lcom/airbnb/android/models/Reservation;->getStartDate()Ljava/util/Date;

    move-result-object v6

    :goto_2c
    invoke-virtual {p3}, Lcom/airbnb/android/models/Reservation;->getGuest()Lcom/airbnb/android/models/User;

    move-result-object v8

    invoke-virtual {v8}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v6, v8, v0}, Lcom/airbnb/android/utils/DateHelper;->getArrivalTimeWithName(Landroid/content/Context;Ljava/util/Date;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {p3}, Lcom/airbnb/android/models/Reservation;->getStartDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {p3}, Lcom/airbnb/android/models/Reservation;->getEndDate()Ljava/util/Date;

    move-result-object v7

    invoke-static {p1, v6, v7}, Lcom/airbnb/android/adapters/HHUpcomingAdapter;->getDateFormattedString(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, "reservationDates":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d002d

    invoke-virtual {p3}, Lcom/airbnb/android/models/Reservation;->getGuestCount()I

    move-result v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {p3}, Lcom/airbnb/android/models/Reservation;->getGuestCount()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "numGuests":Ljava/lang/String;
    invoke-static {p1}, Lcom/airbnb/android/utils/CurrencyHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/CurrencyHelper;

    move-result-object v6

    invoke-virtual {p3}, Lcom/airbnb/android/models/Reservation;->getPayoutPriceNative()I

    move-result v7

    int-to-double v7, v7

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Lcom/airbnb/android/utils/CurrencyHelper;->formatNativeCurrency(DZ)Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "payout":Ljava/lang/String;
    iget-object v6, v5, Lcom/airbnb/android/adapters/HHUpcomingAdapter$UpcomingViewHolder;->details:Landroid/widget/TextView;

    const v7, 0x7f0e021b

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const/4 v9, 0x1

    aput-object v2, v8, v9

    const/4 v9, 0x2

    aput-object v3, v8, v9

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/airbnb/android/utils/MiscUtils;->fromHtmlSafe(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/HHUpcomingAdapter;->getNumListings()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_bc

    .line 92
    iget-object v6, v5, Lcom/airbnb/android/adapters/HHUpcomingAdapter$UpcomingViewHolder;->listingDescription:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    iget-object v6, v5, Lcom/airbnb/android/adapters/HHUpcomingAdapter$UpcomingViewHolder;->listingDescription:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/airbnb/android/models/Reservation;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v7

    invoke-virtual {v7}, Lcom/airbnb/android/models/Listing;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :goto_a8
    iget-object v6, p0, Lcom/airbnb/android/adapters/HHUpcomingAdapter;->mUpcoming:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p3, :cond_c4

    const/4 v1, 0x1

    .line 99
    .local v1, "isFirstInList":Z
    :goto_b2
    return-void

    .line 80
    .end local v0    # "isCheckingIn":Z
    .end local v1    # "isFirstInList":Z
    .end local v2    # "numGuests":Ljava/lang/String;
    .end local v3    # "payout":Ljava/lang/String;
    .end local v4    # "reservationDates":Ljava/lang/String;
    :cond_b3
    const/4 v0, 0x0

    goto/16 :goto_24

    .line 82
    .restart local v0    # "isCheckingIn":Z
    :cond_b6
    invoke-virtual {p3}, Lcom/airbnb/android/models/Reservation;->getEndDate()Ljava/util/Date;

    move-result-object v6

    goto/16 :goto_2c

    .line 95
    .restart local v2    # "numGuests":Ljava/lang/String;
    .restart local v3    # "payout":Ljava/lang/String;
    .restart local v4    # "reservationDates":Ljava/lang/String;
    :cond_bc
    iget-object v6, v5, Lcom/airbnb/android/adapters/HHUpcomingAdapter$UpcomingViewHolder;->listingDescription:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_a8

    .line 98
    :cond_c4
    const/4 v1, 0x0

    goto :goto_b2
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/airbnb/android/adapters/HHUpcomingAdapter;->mUpcoming:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/airbnb/android/adapters/HHUpcomingAdapter;->mUpcoming:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 44
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 54
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    .local v0, "context":Landroid/content/Context;
    if-nez p2, :cond_15

    .line 57
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030146

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 59
    invoke-direct {p0, p2}, Lcom/airbnb/android/adapters/HHUpcomingAdapter;->createUpcomingViewHolder(Landroid/view/View;)V

    .line 62
    :cond_15
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/HHUpcomingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Reservation;

    .line 63
    .local v1, "reservation":Lcom/airbnb/android/models/Reservation;
    invoke-direct {p0, v0, p2, v1}, Lcom/airbnb/android/adapters/HHUpcomingAdapter;->setupUpcomingRow(Landroid/content/Context;Landroid/view/View;Lcom/airbnb/android/models/Reservation;)V

    .line 65
    return-object p2
.end method

.method public isEnabled(I)Z
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public setUpcomingReservations(Ljava/util/List;)V
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
    .line 102
    .local p1, "upcoming":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Reservation;>;"
    iput-object p1, p0, Lcom/airbnb/android/adapters/HHUpcomingAdapter;->mUpcoming:Ljava/util/List;

    .line 103
    return-void
.end method
