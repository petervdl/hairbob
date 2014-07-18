.class public Lcom/airbnb/android/adapters/ROMessageAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ROMessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/adapters/ROMessageAdapter$1;,
        Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;,
        Lcom/airbnb/android/adapters/ROMessageAdapter$RowType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/airbnb/android/models/Post;",
        ">;"
    }
.end annotation


# instance fields
.field private mCheckInOutDateFormat:Ljava/text/DateFormat;

.field private mCurrUser:Lcom/airbnb/android/models/User;

.field private mInquiryListing:Lcom/airbnb/android/models/Listing;

.field private mLatestStatusPostId:J

.field private mOtherUser:Lcom/airbnb/android/models/User;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/airbnb/android/models/User;Lcom/airbnb/android/models/Listing;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "otherUser"    # Lcom/airbnb/android/models/User;
    .param p4, "inquiryListing"    # Lcom/airbnb/android/models/Listing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Post;",
            ">;",
            "Lcom/airbnb/android/models/User;",
            "Lcom/airbnb/android/models/Listing;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "posts":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Post;>;"
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 61
    iput-object p3, p0, Lcom/airbnb/android/adapters/ROMessageAdapter;->mOtherUser:Lcom/airbnb/android/models/User;

    .line 62
    invoke-static {p1}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/adapters/ROMessageAdapter;->mCurrUser:Lcom/airbnb/android/models/User;

    .line 63
    iput-object p4, p0, Lcom/airbnb/android/adapters/ROMessageAdapter;->mInquiryListing:Lcom/airbnb/android/models/Listing;

    .line 64
    return-void
.end method

.method private getAdjustedPosition(I)I
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 257
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, p1

    .line 258
    .local v0, "posReversed":I
    return v0
.end method

.method private getFormattedStatusDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "formattedNumGuests"    # Ljava/lang/String;
    .param p2, "formattedCheckInDate"    # Ljava/lang/String;
    .param p3, "formattedCheckOutDate"    # Ljava/lang/String;
    .param p4, "price"    # Ljava/lang/String;

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/ROMessageAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e06ae

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4f

    const-string/jumbo v0, ", "

    :goto_21
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object p2, v3, v0

    const/4 v0, 0x2

    aput-object p3, v3, v0

    const/4 v4, 0x3

    if-eqz p4, :cond_53

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_48
    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4f
    const-string/jumbo v0, ""

    goto :goto_21

    :cond_53
    const-string/jumbo v0, ""

    goto :goto_48
.end method

.method private hideStatusTextView(Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;)V
    .registers 5
    .param p1, "viewHolder"    # Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;

    .prologue
    .line 197
    iget-object v1, p1, Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;->statusContainer:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 198
    iget-object v1, p1, Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;->contentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 199
    .local v0, "contentParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xa

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 200
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 201
    return-void
.end method

.method private isSelf(Lcom/airbnb/android/models/Post;)Z
    .registers 6
    .param p1, "post"    # Lcom/airbnb/android/models/Post;

    .prologue
    .line 252
    invoke-virtual {p1}, Lcom/airbnb/android/models/Post;->getUserId()J

    move-result-wide v0

    .line 253
    .local v0, "userId":J
    iget-object v2, p0, Lcom/airbnb/android/adapters/ROMessageAdapter;->mCurrUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    const/4 v2, 0x1

    :goto_f
    return v2

    :cond_10
    const/4 v2, 0x0

    goto :goto_f
.end method

.method private setDeclinedInquiryDetails(Lcom/airbnb/android/models/Post;Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;)V
    .registers 5
    .param p1, "post"    # Lcom/airbnb/android/models/Post;
    .param p2, "viewHolder"    # Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;

    .prologue
    .line 180
    iget-object v0, p2, Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;->statusTextView:Landroid/widget/TextView;

    const v1, 0x7f0e06ad

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 182
    iget-object v0, p2, Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;->statusDetailsTextView:Lcom/airbnb/android/views/AutoScaleTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/AutoScaleTextView;->setVisibility(I)V

    .line 183
    return-void
.end method

.method private setInquiryStatusDetails(Lcom/airbnb/android/models/Post;Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;)V
    .registers 16
    .param p1, "post"    # Lcom/airbnb/android/models/Post;
    .param p2, "viewHolder"    # Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 205
    iget-object v7, p0, Lcom/airbnb/android/adapters/ROMessageAdapter;->mCheckInOutDateFormat:Ljava/text/DateFormat;

    if-nez v7, :cond_18

    .line 206
    new-instance v7, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/airbnb/android/adapters/ROMessageAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0e013d

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/airbnb/android/adapters/ROMessageAdapter;->mCheckInOutDateFormat:Ljava/text/DateFormat;

    .line 208
    :cond_18
    invoke-virtual {p1}, Lcom/airbnb/android/models/Post;->getNumberOfGuests()I

    move-result v6

    .line 209
    .local v6, "guestsCount":I
    invoke-virtual {p1}, Lcom/airbnb/android/models/Post;->getCheckinDate()Ljava/util/Date;

    move-result-object v0

    .line 210
    .local v0, "checkInDate":Ljava/util/Date;
    invoke-virtual {p1}, Lcom/airbnb/android/models/Post;->getCheckoutDate()Ljava/util/Date;

    move-result-object v1

    .line 212
    .local v1, "checkOutDate":Ljava/util/Date;
    if-lez v6, :cond_77

    invoke-virtual {p0}, Lcom/airbnb/android/adapters/ROMessageAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d002d

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v7, v8, v6, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 213
    .local v5, "formattedNumGuests":Ljava/lang/String;
    :goto_3d
    iget-object v7, p0, Lcom/airbnb/android/adapters/ROMessageAdapter;->mCheckInOutDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v7, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, "formattedCheckInDate":Ljava/lang/String;
    iget-object v7, p0, Lcom/airbnb/android/adapters/ROMessageAdapter;->mCheckInOutDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v7, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 216
    .local v4, "formattedCheckOutDate":Ljava/lang/String;
    iget-object v7, p0, Lcom/airbnb/android/adapters/ROMessageAdapter;->mInquiryListing:Lcom/airbnb/android/models/Listing;

    if-eqz v7, :cond_7b

    .line 217
    iget-object v7, p2, Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;->statusTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/airbnb/android/adapters/ROMessageAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0e06b0

    new-array v10, v11, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/airbnb/android/adapters/ROMessageAdapter;->mInquiryListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v11}, Lcom/airbnb/android/models/Listing;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    :goto_67
    const/4 v7, 0x0

    invoke-direct {p0, v5, v3, v4, v7}, Lcom/airbnb/android/adapters/ROMessageAdapter;->getFormattedStatusDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, "details":Ljava/lang/String;
    iget-object v7, p2, Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;->statusDetailsTextView:Lcom/airbnb/android/views/AutoScaleTextView;

    invoke-virtual {v7, v2}, Lcom/airbnb/android/views/AutoScaleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v7, p2, Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;->statusDetailsTextView:Lcom/airbnb/android/views/AutoScaleTextView;

    invoke-virtual {v7, v12}, Lcom/airbnb/android/views/AutoScaleTextView;->setVisibility(I)V

    .line 224
    return-void

    .line 212
    .end local v2    # "details":Ljava/lang/String;
    .end local v3    # "formattedCheckInDate":Ljava/lang/String;
    .end local v4    # "formattedCheckOutDate":Ljava/lang/String;
    .end local v5    # "formattedNumGuests":Ljava/lang/String;
    :cond_77
    const-string/jumbo v5, ""

    goto :goto_3d

    .line 219
    .restart local v3    # "formattedCheckInDate":Ljava/lang/String;
    .restart local v4    # "formattedCheckOutDate":Ljava/lang/String;
    .restart local v5    # "formattedNumGuests":Ljava/lang/String;
    :cond_7b
    iget-object v7, p2, Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;->statusTextView:Landroid/widget/TextView;

    const v8, 0x7f0e06af

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_67
.end method

.method private setSpecialOfferOrPreApprovalDetails(Lcom/airbnb/android/models/Post;Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;)V
    .registers 19
    .param p1, "post"    # Lcom/airbnb/android/models/Post;
    .param p2, "viewHolder"    # Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 155
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/airbnb/android/adapters/ROMessageAdapter;->mCheckInOutDateFormat:Ljava/text/DateFormat;

    if-nez v11, :cond_1a

    .line 156
    new-instance v11, Ljava/text/SimpleDateFormat;

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/adapters/ROMessageAdapter;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0e013d

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/airbnb/android/adapters/ROMessageAdapter;->mCheckInOutDateFormat:Ljava/text/DateFormat;

    .line 158
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/android/models/Post;->getSpecialOffer()Lcom/airbnb/android/models/SpecialOffer;

    move-result-object v9

    .line 161
    .local v9, "specialOffer":Lcom/airbnb/android/models/SpecialOffer;
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/adapters/ROMessageAdapter;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/airbnb/android/utils/CurrencyHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/CurrencyHelper;

    move-result-object v11

    invoke-virtual {v9}, Lcom/airbnb/android/models/SpecialOffer;->getPriceNative()I

    move-result v12

    int-to-double v12, v12

    const/4 v14, 0x1

    invoke-virtual {v11, v12, v13, v14}, Lcom/airbnb/android/utils/CurrencyHelper;->formatNativeCurrency(DZ)Ljava/lang/String;

    move-result-object v8

    .line 162
    .local v8, "price":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/airbnb/android/models/SpecialOffer;->getNumberOfGuests()I

    move-result v7

    .line 163
    .local v7, "numGuests":I
    if-lez v7, :cond_ac

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/adapters/ROMessageAdapter;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d002d

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v7, v13}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 165
    .local v5, "formattedNumGuests":Ljava/lang/String;
    :goto_4f
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/airbnb/android/adapters/ROMessageAdapter;->mCheckInOutDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v9}, Lcom/airbnb/android/models/SpecialOffer;->getStartDate()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, "formattedCheckInDate":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/adapters/ROMessageAdapter;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/airbnb/android/utils/CalendarHelper;->newInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/CalendarHelper;

    move-result-object v6

    .line 167
    .local v6, "helper":Lcom/airbnb/android/utils/CalendarHelper;
    invoke-virtual {v9}, Lcom/airbnb/android/models/SpecialOffer;->getStartDate()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/airbnb/android/utils/CalendarHelper;->setTime(Ljava/util/Date;)V

    .line 168
    invoke-virtual {v6}, Lcom/airbnb/android/utils/CalendarHelper;->getCalendar()Ljava/util/Calendar;

    move-result-object v11

    const/4 v12, 0x5

    invoke-virtual {v9}, Lcom/airbnb/android/models/SpecialOffer;->getNights()I

    move-result v13

    invoke-virtual {v11, v12, v13}, Ljava/util/Calendar;->add(II)V

    .line 169
    invoke-virtual {v6}, Lcom/airbnb/android/utils/CalendarHelper;->getCalendar()Ljava/util/Calendar;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 170
    .local v1, "checkoutDate":Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/airbnb/android/adapters/ROMessageAdapter;->mCheckInOutDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v11, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 172
    .local v4, "formattedCheckOutDate":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/airbnb/android/models/SpecialOffer;->isPreApproval()Z

    move-result v11

    if-eqz v11, :cond_b0

    const v10, 0x7f0e06b1

    .line 173
    .local v10, "stringResId":I
    :goto_8f
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;->statusTextView:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(I)V

    .line 174
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3, v4, v8}, Lcom/airbnb/android/adapters/ROMessageAdapter;->getFormattedStatusDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "details":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;->statusDetailsTextView:Lcom/airbnb/android/views/AutoScaleTextView;

    invoke-virtual {v11, v2}, Lcom/airbnb/android/views/AutoScaleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;->statusDetailsTextView:Lcom/airbnb/android/views/AutoScaleTextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/airbnb/android/views/AutoScaleTextView;->setVisibility(I)V

    .line 177
    return-void

    .line 163
    .end local v1    # "checkoutDate":Ljava/util/Date;
    .end local v2    # "details":Ljava/lang/String;
    .end local v3    # "formattedCheckInDate":Ljava/lang/String;
    .end local v4    # "formattedCheckOutDate":Ljava/lang/String;
    .end local v5    # "formattedNumGuests":Ljava/lang/String;
    .end local v6    # "helper":Lcom/airbnb/android/utils/CalendarHelper;
    .end local v10    # "stringResId":I
    :cond_ac
    const-string/jumbo v5, ""

    goto :goto_4f

    .line 172
    .restart local v1    # "checkoutDate":Ljava/util/Date;
    .restart local v3    # "formattedCheckInDate":Ljava/lang/String;
    .restart local v4    # "formattedCheckOutDate":Ljava/lang/String;
    .restart local v5    # "formattedNumGuests":Ljava/lang/String;
    .restart local v6    # "helper":Lcom/airbnb/android/utils/CalendarHelper;
    :cond_b0
    const v10, 0x7f0e06b2

    goto :goto_8f
.end method

.method private updateStatusDetailsIfNeeded(Lcom/airbnb/android/models/Post;Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;)V
    .registers 7
    .param p1, "post"    # Lcom/airbnb/android/models/Post;
    .param p2, "viewHolder"    # Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;

    .prologue
    const v3, 0x7f0a001b

    .line 124
    invoke-virtual {p1}, Lcom/airbnb/android/models/Post;->getStatus()Lcom/airbnb/android/models/ReservationStatus;

    move-result-object v0

    .line 125
    .local v0, "status":Lcom/airbnb/android/models/ReservationStatus;
    invoke-virtual {p1}, Lcom/airbnb/android/models/Post;->hasSpecialOffer()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/adapters/ROMessageAdapter;->setSpecialOfferOrPreApprovalDetails(Lcom/airbnb/android/models/Post;Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;)V

    .line 127
    sget-object v1, Lcom/airbnb/android/models/ReservationStatus;->SpecialOffer:Lcom/airbnb/android/models/ReservationStatus;

    invoke-virtual {v1}, Lcom/airbnb/android/models/ReservationStatus;->getColorId()I

    move-result v1

    invoke-virtual {p1}, Lcom/airbnb/android/models/Post;->getId()J

    move-result-wide v2

    invoke-direct {p0, p2, v1, v2, v3}, Lcom/airbnb/android/adapters/ROMessageAdapter;->updateStatusTextColorAndVisibility(Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;IJ)V

    .line 146
    :goto_1d
    return-void

    .line 129
    :cond_1e
    invoke-virtual {p1}, Lcom/airbnb/android/models/Post;->hasDates()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 130
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/adapters/ROMessageAdapter;->setInquiryStatusDetails(Lcom/airbnb/android/models/Post;Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;)V

    .line 131
    sget-object v1, Lcom/airbnb/android/models/ReservationStatus;->Inquiry:Lcom/airbnb/android/models/ReservationStatus;

    invoke-virtual {v1}, Lcom/airbnb/android/models/ReservationStatus;->getColorId()I

    move-result v1

    invoke-virtual {p1}, Lcom/airbnb/android/models/Post;->getId()J

    move-result-wide v2

    invoke-direct {p0, p2, v1, v2, v3}, Lcom/airbnb/android/adapters/ROMessageAdapter;->updateStatusTextColorAndVisibility(Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;IJ)V

    goto :goto_1d

    .line 133
    :cond_35
    if-eqz v0, :cond_62

    sget-object v1, Lcom/airbnb/android/models/ReservationStatus;->Unknown:Lcom/airbnb/android/models/ReservationStatus;

    if-eq v0, v1, :cond_62

    .line 134
    sget-object v1, Lcom/airbnb/android/models/ReservationStatus;->Denied:Lcom/airbnb/android/models/ReservationStatus;

    if-ne v0, v1, :cond_4a

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/adapters/ROMessageAdapter;->setDeclinedInquiryDetails(Lcom/airbnb/android/models/Post;Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;)V

    .line 136
    invoke-virtual {p1}, Lcom/airbnb/android/models/Post;->getId()J

    move-result-wide v1

    invoke-direct {p0, p2, v3, v1, v2}, Lcom/airbnb/android/adapters/ROMessageAdapter;->updateStatusTextColorAndVisibility(Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;IJ)V

    goto :goto_1d

    .line 139
    :cond_4a
    iget-object v1, p2, Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;->statusTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/airbnb/android/models/ReservationStatus;->getDisplayStringId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 140
    iget-object v1, p2, Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;->statusDetailsTextView:Lcom/airbnb/android/views/AutoScaleTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/AutoScaleTextView;->setVisibility(I)V

    .line 141
    invoke-virtual {p1}, Lcom/airbnb/android/models/Post;->getId()J

    move-result-wide v1

    invoke-direct {p0, p2, v3, v1, v2}, Lcom/airbnb/android/adapters/ROMessageAdapter;->updateStatusTextColorAndVisibility(Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;IJ)V

    goto :goto_1d

    .line 144
    :cond_62
    invoke-direct {p0, p2}, Lcom/airbnb/android/adapters/ROMessageAdapter;->hideStatusTextView(Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;)V

    goto :goto_1d
.end method

.method private updateStatusTextColorAndVisibility(Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;IJ)V
    .registers 12
    .param p1, "viewHolder"    # Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;
    .param p2, "colorRes"    # I
    .param p3, "postId"    # J

    .prologue
    const/4 v2, 0x0

    .line 187
    iget-wide v3, p0, Lcom/airbnb/android/adapters/ROMessageAdapter;->mLatestStatusPostId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_3d

    iget-wide v3, p0, Lcom/airbnb/android/adapters/ROMessageAdapter;->mLatestStatusPostId:J

    cmp-long v3, v3, p3

    if-nez v3, :cond_3d

    const/4 v1, 0x1

    .line 188
    .local v1, "needsStatusColor":Z
    :goto_10
    iget-object v3, p1, Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;->statusTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/airbnb/android/adapters/ROMessageAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v1, :cond_3f

    .end local p2    # "colorRes":I
    :goto_1c
    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    iget-object v3, p1, Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;->statusContainer:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 191
    iget-object v3, p1, Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;->contentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 192
    .local v0, "contentParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, 0x3

    const v4, 0x7f08039d

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 193
    const/16 v3, 0xa

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 194
    return-void

    .end local v0    # "contentParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "needsStatusColor":Z
    .restart local p2    # "colorRes":I
    :cond_3d
    move v1, v2

    .line 187
    goto :goto_10

    .line 188
    .restart local v1    # "needsStatusColor":Z
    :cond_3f
    const p2, 0x7f0a001a

    goto :goto_1c
.end method

.method private updateTimestampAndFromMobileText(Lcom/airbnb/android/models/Post;Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;)V
    .registers 8
    .param p1, "post"    # Lcom/airbnb/android/models/Post;
    .param p2, "viewHolder"    # Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;

    .prologue
    .line 149
    invoke-virtual {p1}, Lcom/airbnb/android/models/Post;->isBeingSent()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-virtual {p0}, Lcom/airbnb/android/adapters/ROMessageAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e06e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "dateDelta":Ljava/lang/String;
    :goto_15
    iget-object v1, p2, Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;->timestampTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/airbnb/android/models/Post;->isSentFromMobile()Z

    move-result v2

    if-eqz v2, :cond_39

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/airbnb/android/adapters/ROMessageAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e0685

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "dateDelta":Ljava/lang/String;
    :cond_39
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    return-void

    .line 149
    :cond_3d
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/ROMessageAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/airbnb/android/models/Post;->getCreatedAt()Ljava/util/Date;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/airbnb/android/utils/DateHelper;->getRelativeDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15
.end method


# virtual methods
.method public addAll(Ljava/util/Collection;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/airbnb/android/models/Post;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 234
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/airbnb/android/models/Post;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Post;

    .line 235
    .local v1, "message":Lcom/airbnb/android/models/Post;
    invoke-virtual {p0, v1}, Lcom/airbnb/android/adapters/ROMessageAdapter;->add(Ljava/lang/Object;)V

    .line 237
    iget-wide v2, p0, Lcom/airbnb/android/adapters/ROMessageAdapter;->mLatestStatusPostId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_4

    invoke-virtual {v1}, Lcom/airbnb/android/models/Post;->hasValidStatus()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 238
    invoke-virtual {v1}, Lcom/airbnb/android/models/Post;->getId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/airbnb/android/adapters/ROMessageAdapter;->mLatestStatusPostId:J

    goto :goto_4

    .line 241
    .end local v1    # "message":Lcom/airbnb/android/models/Post;
    :cond_28
    return-void
.end method

.method public getItemViewType(I)I
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/airbnb/android/adapters/ROMessageAdapter;->getAdjustedPosition(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/airbnb/android/adapters/ROMessageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Post;

    .line 69
    .local v0, "post":Lcom/airbnb/android/models/Post;
    invoke-direct {p0, v0}, Lcom/airbnb/android/adapters/ROMessageAdapter;->isSelf(Lcom/airbnb/android/models/Post;)Z

    move-result v1

    if-eqz v1, :cond_17

    sget-object v1, Lcom/airbnb/android/adapters/ROMessageAdapter$RowType;->SELF:Lcom/airbnb/android/adapters/ROMessageAdapter$RowType;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/ROMessageAdapter$RowType;->ordinal()I

    move-result v1

    :goto_16
    return v1

    :cond_17
    sget-object v1, Lcom/airbnb/android/adapters/ROMessageAdapter$RowType;->OTHER:Lcom/airbnb/android/adapters/ROMessageAdapter$RowType;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/ROMessageAdapter$RowType;->ordinal()I

    move-result v1

    goto :goto_16
.end method

.method public getLatestStatusPostId()J
    .registers 3

    .prologue
    .line 244
    iget-wide v0, p0, Lcom/airbnb/android/adapters/ROMessageAdapter;->mLatestStatusPostId:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/airbnb/android/adapters/ROMessageAdapter;->getAdjustedPosition(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/airbnb/android/adapters/ROMessageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/Post;

    .line 80
    .local v2, "post":Lcom/airbnb/android/models/Post;
    invoke-direct {p0, v2}, Lcom/airbnb/android/adapters/ROMessageAdapter;->isSelf(Lcom/airbnb/android/models/Post;)Z

    move-result v0

    .line 83
    .local v0, "isSelf":Z
    if-nez p2, :cond_cc

    .line 84
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/ROMessageAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    if-eqz v0, :cond_c4

    sget-object v6, Lcom/airbnb/android/adapters/ROMessageAdapter$RowType;->SELF:Lcom/airbnb/android/adapters/ROMessageAdapter$RowType;

    invoke-virtual {v6}, Lcom/airbnb/android/adapters/ROMessageAdapter$RowType;->getLayoutId()I

    move-result v6

    :goto_20
    const/4 v8, 0x0

    invoke-virtual {v7, v6, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 85
    new-instance v5, Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;-><init>(Lcom/airbnb/android/adapters/ROMessageAdapter$1;)V

    .line 86
    .local v5, "viewHolder":Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;
    const v6, 0x7f08009e

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/airbnb/android/views/HaloImageView;

    iput-object v6, v5, Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;->profileImageView:Lcom/airbnb/android/views/HaloImageView;

    .line 87
    const v6, 0x7f08039e

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, v5, Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;->contentContainer:Landroid/widget/LinearLayout;

    .line 88
    const v6, 0x7f0803a0

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;->timestampTextView:Landroid/widget/TextView;

    .line 89
    const v6, 0x7f08039f

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;->messageTextView:Landroid/widget/TextView;

    .line 90
    const v6, 0x7f08039d

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v5, Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;->statusContainer:Landroid/view/View;

    .line 91
    iget-object v6, v5, Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;->statusContainer:Landroid/view/View;

    const v7, 0x7f08037a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;->statusTextView:Landroid/widget/TextView;

    .line 92
    iget-object v6, v5, Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;->statusContainer:Landroid/view/View;

    const v7, 0x7f0803a1

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/airbnb/android/views/AutoScaleTextView;

    iput-object v6, v5, Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;->statusDetailsTextView:Lcom/airbnb/android/views/AutoScaleTextView;

    .line 93
    const v6, 0x7f080097

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v5, Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;->messageAvatarGap:Landroid/view/View;

    .line 94
    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 99
    :goto_86
    invoke-virtual {v2}, Lcom/airbnb/android/models/Post;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "postMsg":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 101
    .local v1, "msgIsEmpty":Z
    iget-object v6, v5, Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;->contentContainer:Landroid/widget/LinearLayout;

    invoke-static {v6, v1}, Lcom/airbnb/android/utils/MiscUtils;->setGoneIf(Landroid/view/View;Z)V

    .line 102
    iget-object v6, v5, Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;->profileImageView:Lcom/airbnb/android/views/HaloImageView;

    invoke-static {v6, v1}, Lcom/airbnb/android/utils/MiscUtils;->setGoneIf(Landroid/view/View;Z)V

    .line 103
    iget-object v6, v5, Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;->messageAvatarGap:Landroid/view/View;

    invoke-static {v6, v1}, Lcom/airbnb/android/utils/MiscUtils;->setGoneIf(Landroid/view/View;Z)V

    .line 105
    if-nez v1, :cond_af

    .line 106
    iget-object v6, v5, Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;->messageTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    if-eqz v0, :cond_d3

    iget-object v4, p0, Lcom/airbnb/android/adapters/ROMessageAdapter;->mCurrUser:Lcom/airbnb/android/models/User;

    .line 108
    .local v4, "user":Lcom/airbnb/android/models/User;
    :goto_a8
    if-eqz v4, :cond_af

    .line 109
    iget-object v6, v5, Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;->profileImageView:Lcom/airbnb/android/views/HaloImageView;

    invoke-virtual {v6, v4}, Lcom/airbnb/android/views/HaloImageView;->setImageUrlForUser(Lcom/airbnb/android/models/User;)V

    .line 113
    .end local v4    # "user":Lcom/airbnb/android/models/User;
    :cond_af
    invoke-direct {p0, v2, v5}, Lcom/airbnb/android/adapters/ROMessageAdapter;->updateTimestampAndFromMobileText(Lcom/airbnb/android/models/Post;Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;)V

    .line 114
    invoke-direct {p0, v2, v5}, Lcom/airbnb/android/adapters/ROMessageAdapter;->updateStatusDetailsIfNeeded(Lcom/airbnb/android/models/Post;Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;)V

    .line 116
    if-eqz v0, :cond_c3

    .line 117
    invoke-virtual {v2}, Lcom/airbnb/android/models/Post;->isBeingSent()Z

    move-result v6

    if-eqz v6, :cond_d6

    const v6, 0x3ecccccd

    :goto_c0
    invoke-virtual {p2, v6}, Landroid/view/View;->setAlpha(F)V

    .line 120
    :cond_c3
    return-object p2

    .line 84
    .end local v1    # "msgIsEmpty":Z
    .end local v3    # "postMsg":Ljava/lang/String;
    .end local v5    # "viewHolder":Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;
    :cond_c4
    sget-object v6, Lcom/airbnb/android/adapters/ROMessageAdapter$RowType;->OTHER:Lcom/airbnb/android/adapters/ROMessageAdapter$RowType;

    invoke-virtual {v6}, Lcom/airbnb/android/adapters/ROMessageAdapter$RowType;->getLayoutId()I

    move-result v6

    goto/16 :goto_20

    .line 96
    :cond_cc
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;

    .restart local v5    # "viewHolder":Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;
    goto :goto_86

    .line 107
    .restart local v1    # "msgIsEmpty":Z
    .restart local v3    # "postMsg":Ljava/lang/String;
    :cond_d3
    iget-object v4, p0, Lcom/airbnb/android/adapters/ROMessageAdapter;->mOtherUser:Lcom/airbnb/android/models/User;

    goto :goto_a8

    .line 117
    :cond_d6
    const/high16 v6, 0x3f800000

    goto :goto_c0
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 74
    invoke-static {}, Lcom/airbnb/android/adapters/ROMessageAdapter$RowType;->values()[Lcom/airbnb/android/adapters/ROMessageAdapter$RowType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public setLatestStatusPostId(J)V
    .registers 3
    .param p1, "postId"    # J

    .prologue
    .line 248
    iput-wide p1, p0, Lcom/airbnb/android/adapters/ROMessageAdapter;->mLatestStatusPostId:J

    .line 249
    return-void
.end method

.method public setOtherUser(Lcom/airbnb/android/models/User;)V
    .registers 2
    .param p1, "user"    # Lcom/airbnb/android/models/User;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/airbnb/android/adapters/ROMessageAdapter;->mOtherUser:Lcom/airbnb/android/models/User;

    .line 263
    return-void
.end method
