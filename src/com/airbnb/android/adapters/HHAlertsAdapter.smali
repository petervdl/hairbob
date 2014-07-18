.class public Lcom/airbnb/android/adapters/HHAlertsAdapter;
.super Lcom/airbnb/android/adapters/HHBaseAdapter;
.source "HHAlertsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/adapters/HHAlertsAdapter$1;,
        Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder;,
        Lcom/airbnb/android/adapters/HHAlertsAdapter$WebViewAlertViewHolder;,
        Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;
    }
.end annotation


# static fields
.field private static final COUNTDOWN_HOURS:I = 0x6


# instance fields
.field private mAlerts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Alert;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/airbnb/android/adapters/HHBaseAdapter;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/adapters/HHAlertsAdapter;->mAlerts:Ljava/util/List;

    .line 51
    return-void
.end method

.method private createAlertViewHolder(Landroid/view/View;Lcom/airbnb/android/models/Alert;)V
    .registers 5
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "alert"    # Lcom/airbnb/android/models/Alert;

    .prologue
    .line 274
    sget-object v0, Lcom/airbnb/android/adapters/HHAlertsAdapter$1;->$SwitchMap$com$airbnb$android$models$Alert$AlertType:[I

    invoke-virtual {p2}, Lcom/airbnb/android/models/Alert;->getAlertTypeEnum()Lcom/airbnb/android/models/Alert$AlertType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/Alert$AlertType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_18

    .line 294
    :goto_f
    return-void

    .line 285
    :pswitch_10
    invoke-direct {p0, p1}, Lcom/airbnb/android/adapters/HHAlertsAdapter;->createWebViewAlertViewHolder(Landroid/view/View;)V

    goto :goto_f

    .line 289
    :pswitch_14
    invoke-direct {p0, p1}, Lcom/airbnb/android/adapters/HHAlertsAdapter;->createReservationRequestViewHolder(Landroid/view/View;)V

    goto :goto_f

    .line 274
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_14
        :pswitch_14
    .end packed-switch
.end method

.method private createReservationRequestViewHolder(Landroid/view/View;)V
    .registers 3
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 267
    new-instance v0, Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder;

    invoke-direct {v0, p0}, Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder;-><init>(Lcom/airbnb/android/adapters/HHAlertsAdapter;)V

    .line 268
    .local v0, "viewHolder":Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder;
    invoke-static {v0, p1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 270
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 271
    return-void
.end method

.method private createWebViewAlertViewHolder(Landroid/view/View;)V
    .registers 3
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 260
    new-instance v0, Lcom/airbnb/android/adapters/HHAlertsAdapter$WebViewAlertViewHolder;

    invoke-direct {v0, p0}, Lcom/airbnb/android/adapters/HHAlertsAdapter$WebViewAlertViewHolder;-><init>(Lcom/airbnb/android/adapters/HHAlertsAdapter;)V

    .line 261
    .local v0, "viewHolder":Lcom/airbnb/android/adapters/HHAlertsAdapter$WebViewAlertViewHolder;
    invoke-static {v0, p1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 263
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 264
    return-void
.end method

.method private getAlertLayoutType(Lcom/airbnb/android/models/Alert;)I
    .registers 4
    .param p1, "alert"    # Lcom/airbnb/android/models/Alert;

    .prologue
    .line 319
    sget-object v0, Lcom/airbnb/android/adapters/HHAlertsAdapter$1;->$SwitchMap$com$airbnb$android$models$Alert$AlertType:[I

    invoke-virtual {p1}, Lcom/airbnb/android/models/Alert;->getAlertTypeEnum()Lcom/airbnb/android/models/Alert$AlertType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/Alert$AlertType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    .line 335
    const/4 v0, 0x0

    :goto_10
    return v0

    .line 330
    :pswitch_11
    const v0, 0x7f030147

    goto :goto_10

    .line 333
    :pswitch_15
    const v0, 0x7f030144

    goto :goto_10

    .line 319
    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method

.method private getAlertRowType(Lcom/airbnb/android/models/Alert;)I
    .registers 4
    .param p1, "alert"    # Lcom/airbnb/android/models/Alert;

    .prologue
    .line 297
    sget-object v0, Lcom/airbnb/android/adapters/HHAlertsAdapter$1;->$SwitchMap$com$airbnb$android$models$Alert$AlertType:[I

    invoke-virtual {p1}, Lcom/airbnb/android/models/Alert;->getAlertTypeEnum()Lcom/airbnb/android/models/Alert$AlertType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/Alert$AlertType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_26

    .line 314
    const/4 v0, -0x1

    :goto_10
    return v0

    .line 308
    :pswitch_11
    sget-object v0, Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;->WebView:Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;->ordinal()I

    move-result v0

    goto :goto_10

    .line 310
    :pswitch_18
    sget-object v0, Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;->Inquiry:Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;->ordinal()I

    move-result v0

    goto :goto_10

    .line 312
    :pswitch_1f
    sget-object v0, Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;->PendingReservation:Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;->ordinal()I

    move-result v0

    goto :goto_10

    .line 297
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_18
        :pswitch_1f
    .end packed-switch
.end method

.method private setupAlertRow(Landroid/content/Context;Landroid/view/View;Lcom/airbnb/android/models/Alert;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "alert"    # Lcom/airbnb/android/models/Alert;

    .prologue
    .line 123
    sget-object v0, Lcom/airbnb/android/adapters/HHAlertsAdapter$1;->$SwitchMap$com$airbnb$android$models$Alert$AlertType:[I

    invoke-virtual {p3}, Lcom/airbnb/android/models/Alert;->getAlertTypeEnum()Lcom/airbnb/android/models/Alert$AlertType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/Alert$AlertType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1c

    .line 145
    :goto_f
    return-void

    .line 134
    :pswitch_10
    invoke-direct {p0, p2, p3}, Lcom/airbnb/android/adapters/HHAlertsAdapter;->setupWebViewRow(Landroid/view/View;Lcom/airbnb/android/models/Alert;)V

    goto :goto_f

    .line 137
    :pswitch_14
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/android/adapters/HHAlertsAdapter;->setupInquiryRow(Landroid/content/Context;Landroid/view/View;Lcom/airbnb/android/models/Alert;)V

    goto :goto_f

    .line 140
    :pswitch_18
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/android/adapters/HHAlertsAdapter;->setupReservationRequestRow(Landroid/content/Context;Landroid/view/View;Lcom/airbnb/android/models/Alert;)V

    goto :goto_f

    .line 123
    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_14
        :pswitch_18
    .end packed-switch
.end method

.method private setupColorSpan(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/text/Spannable;
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "coloredSpan"    # Ljava/lang/String;
    .param p3, "string"    # Ljava/lang/String;
    .param p4, "color"    # I

    .prologue
    .line 340
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 341
    .local v1, "span":Landroid/text/Spannable;
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 343
    .local v0, "colorSpan":Landroid/text/style/ForegroundColorSpan;
    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x11

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 345
    return-object v1
.end method

.method private setupInquiryRow(Landroid/content/Context;Landroid/view/View;Lcom/airbnb/android/models/Alert;)V
    .registers 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "alert"    # Lcom/airbnb/android/models/Alert;

    .prologue
    .line 192
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder;

    .line 194
    .local v12, "viewHolder":Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder;
    invoke-virtual/range {p3 .. p3}, Lcom/airbnb/android/models/Alert;->getThread()Lcom/airbnb/android/models/MessageThread;

    move-result-object v11

    .line 195
    .local v11, "thread":Lcom/airbnb/android/models/MessageThread;
    invoke-virtual {v11}, Lcom/airbnb/android/models/MessageThread;->getOtherUser()Lcom/airbnb/android/models/User;

    move-result-object v2

    .line 197
    .local v2, "guest":Lcom/airbnb/android/models/User;
    iget-object v13, v12, Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder;->profileImage:Lcom/airbnb/android/views/HaloImageView;

    invoke-virtual {v13, v2}, Lcom/airbnb/android/views/HaloImageView;->setImageUrlForUser(Lcom/airbnb/android/models/User;)V

    .line 199
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 202
    .local v4, "now":Ljava/util/Date;
    invoke-virtual {v11}, Lcom/airbnb/android/models/MessageThread;->getExpiresAt()Ljava/util/Date;

    move-result-object v13

    if-eqz v13, :cond_165

    invoke-virtual {v11}, Lcom/airbnb/android/models/MessageThread;->getCountdownAt()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v13

    if-eqz v13, :cond_165

    invoke-virtual {v11}, Lcom/airbnb/android/models/MessageThread;->getExpiresAt()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v13

    if-eqz v13, :cond_165

    .line 203
    iget-object v13, v12, Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder;->timePassed:Landroid/widget/TextView;

    invoke-virtual {v11}, Lcom/airbnb/android/models/MessageThread;->getExpiresAt()Ljava/util/Date;

    move-result-object v14

    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Lcom/airbnb/android/utils/DateHelper;->getTimeRemaining(Landroid/content/Context;Ljava/util/Date;Z)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v13, v12, Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder;->timePassed:Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a002b

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 210
    :goto_52
    iget-object v13, v12, Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v14, v12, Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder;->unreadDot:Landroid/view/View;

    invoke-virtual/range {p3 .. p3}, Lcom/airbnb/android/models/Alert;->isViewed()Z

    move-result v13

    if-eqz v13, :cond_186

    const/16 v13, 0x8

    :goto_65
    invoke-virtual {v14, v13}, Landroid/view/View;->setVisibility(I)V

    .line 213
    sget-object v13, Lcom/airbnb/android/models/ReservationStatus;->Inquiry:Lcom/airbnb/android/models/ReservationStatus;

    invoke-virtual {v11}, Lcom/airbnb/android/models/MessageThread;->getMessageThreadStatus()Lcom/airbnb/android/models/ReservationStatus;

    move-result-object v14

    if-ne v13, v14, :cond_189

    const/4 v3, 0x1

    .line 214
    .local v3, "isInquiry":Z
    :goto_71
    if-eqz v3, :cond_18c

    invoke-virtual {v11}, Lcom/airbnb/android/models/MessageThread;->getInquiryCheckinDate()Ljava/util/Date;

    move-result-object v13

    if-eqz v13, :cond_18c

    invoke-virtual {v11}, Lcom/airbnb/android/models/MessageThread;->getInquiryCheckoutDate()Ljava/util/Date;

    move-result-object v13

    if-eqz v13, :cond_18c

    invoke-virtual {v11}, Lcom/airbnb/android/models/MessageThread;->isResponded()Z

    move-result v13

    if-eqz v13, :cond_8b

    invoke-virtual {v11}, Lcom/airbnb/android/models/MessageThread;->isUnread()Z

    move-result v13

    if-nez v13, :cond_18c

    .line 215
    :cond_8b
    invoke-virtual {v11}, Lcom/airbnb/android/models/MessageThread;->getInquiryCheckinDate()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v11}, Lcom/airbnb/android/models/MessageThread;->getInquiryCheckoutDate()Ljava/util/Date;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lcom/airbnb/android/adapters/HHAlertsAdapter;->getDateFormattedString(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 216
    .local v7, "reservationDates":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d002d

    invoke-virtual {v11}, Lcom/airbnb/android/models/MessageThread;->getInquiryNumGuests()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v11}, Lcom/airbnb/android/models/MessageThread;->getInquiryNumGuests()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 217
    .local v5, "numGuests":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/airbnb/android/utils/CurrencyHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/CurrencyHelper;

    move-result-object v13

    invoke-virtual {v11}, Lcom/airbnb/android/models/MessageThread;->getInquiryPriceNative()I

    move-result v14

    int-to-double v14, v14

    const/16 v16, 0x1

    invoke-virtual/range {v13 .. v16}, Lcom/airbnb/android/utils/CurrencyHelper;->formatNativeCurrency(DZ)Ljava/lang/String;

    move-result-object v6

    .line 219
    .local v6, "payout":Ljava/lang/String;
    iget-object v13, v12, Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder;->details:Landroid/widget/TextView;

    const v14, 0x7f0e021b

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v7, v15, v16

    const/16 v16, 0x1

    aput-object v5, v15, v16

    const/16 v16, 0x2

    aput-object v6, v15, v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/airbnb/android/utils/MiscUtils;->fromHtmlSafe(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    .end local v5    # "numGuests":Ljava/lang/String;
    .end local v6    # "payout":Ljava/lang/String;
    .end local v7    # "reservationDates":Ljava/lang/String;
    :goto_ec
    invoke-virtual {v11}, Lcom/airbnb/android/models/MessageThread;->getStatusString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_197

    invoke-virtual {v11}, Lcom/airbnb/android/models/MessageThread;->getMessageThreadStatus()Lcom/airbnb/android/models/ReservationStatus;

    move-result-object v13

    invoke-virtual {v13}, Lcom/airbnb/android/models/ReservationStatus;->getStatus()Ljava/lang/String;

    move-result-object v10

    .line 225
    .local v10, "statusString":Ljava/lang/String;
    :goto_fe
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    .local v8, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v11}, Lcom/airbnb/android/models/MessageThread;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v13

    if-nez v13, :cond_129

    .line 228
    const-string/jumbo v13, "android_eng"

    const/4 v14, 0x1

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v15

    const-string/jumbo v16, "type"

    const-string/jumbo v17, "hh_inquiry_listing_null"

    invoke-virtual/range {v15 .. v17}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v15

    const-string/jumbo v16, "thread_id"

    invoke-virtual {v11}, Lcom/airbnb/android/models/MessageThread;->getId()J

    move-result-wide v17

    invoke-virtual/range {v15 .. v18}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;J)Lcom/airbnb/android/utils/Strap;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 230
    :cond_129
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/adapters/HHAlertsAdapter;->getNumListings()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_1a7

    invoke-virtual {v11}, Lcom/airbnb/android/models/MessageThread;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v13

    if-eqz v13, :cond_1a7

    .line 231
    const v13, 0x7f0e00a6

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Lcom/airbnb/android/models/MessageThread;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v14

    invoke-virtual {v14}, Lcom/airbnb/android/models/Listing;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    if-eqz v3, :cond_19d

    .line 234
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f0a0013

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v13, v14}, Lcom/airbnb/android/adapters/HHAlertsAdapter;->setupColorSpan(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/text/Spannable;

    move-result-object v9

    .line 235
    .local v9, "span":Landroid/text/Spannable;
    iget-object v13, v12, Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder;->status:Landroid/widget/TextView;

    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    .end local v9    # "span":Landroid/text/Spannable;
    :goto_164
    return-void

    .line 206
    .end local v3    # "isInquiry":Z
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    .end local v10    # "statusString":Ljava/lang/String;
    :cond_165
    iget-object v13, v12, Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder;->timePassed:Landroid/widget/TextView;

    invoke-virtual {v11}, Lcom/airbnb/android/models/MessageThread;->getUpdatedAt()Ljava/util/Date;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/airbnb/android/utils/DateHelper;->getRelativeDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v13, v12, Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder;->timePassed:Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a001a

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_52

    .line 211
    :cond_186
    const/4 v13, 0x0

    goto/16 :goto_65

    .line 213
    :cond_189
    const/4 v3, 0x0

    goto/16 :goto_71

    .line 221
    .restart local v3    # "isInquiry":Z
    :cond_18c
    iget-object v13, v12, Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder;->details:Landroid/widget/TextView;

    invoke-virtual {v11}, Lcom/airbnb/android/models/MessageThread;->getPreview()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_ec

    .line 224
    :cond_197
    invoke-virtual {v11}, Lcom/airbnb/android/models/MessageThread;->getStatusString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_fe

    .line 237
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    .restart local v10    # "statusString":Ljava/lang/String;
    :cond_19d
    iget-object v13, v12, Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder;->status:Landroid/widget/TextView;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_164

    .line 240
    :cond_1a7
    if-eqz v3, :cond_1c2

    .line 241
    invoke-virtual {v11}, Lcom/airbnb/android/models/MessageThread;->getStatusString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const v15, 0x7f0a0013

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v14, v15}, Lcom/airbnb/android/adapters/HHAlertsAdapter;->setupColorSpan(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/text/Spannable;

    move-result-object v9

    .line 242
    .restart local v9    # "span":Landroid/text/Spannable;
    iget-object v13, v12, Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder;->status:Landroid/widget/TextView;

    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_164

    .line 244
    .end local v9    # "span":Landroid/text/Spannable;
    :cond_1c2
    iget-object v13, v12, Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder;->status:Landroid/widget/TextView;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_164
.end method

.method private setupReservationRequestRow(Landroid/content/Context;Landroid/view/View;Lcom/airbnb/android/models/Alert;)V
    .registers 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "alert"    # Lcom/airbnb/android/models/Alert;

    .prologue
    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder;

    .line 150
    .local v12, "viewHolder":Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder;
    invoke-virtual/range {p3 .. p3}, Lcom/airbnb/android/models/Alert;->getReservation()Lcom/airbnb/android/models/Reservation;

    move-result-object v8

    .line 152
    .local v8, "reservation":Lcom/airbnb/android/models/Reservation;
    invoke-virtual {v8}, Lcom/airbnb/android/models/Reservation;->getPendingExpiresAt()Ljava/util/Date;

    move-result-object v4

    .line 153
    .local v4, "expires":Ljava/util/Date;
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long v2, v13, v15

    .line 155
    .local v2, "delta":J
    const-wide/32 v13, 0x1499700

    cmp-long v13, v2, v13

    if-lez v13, :cond_c3

    .line 156
    iget-object v13, v12, Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder;->timePassed:Landroid/widget/TextView;

    invoke-virtual/range {p3 .. p3}, Lcom/airbnb/android/models/Alert;->getCreatedAt()Ljava/util/Date;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/airbnb/android/utils/DateHelper;->getRelativeDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v13, v12, Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder;->timePassed:Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a001a

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    :goto_3e
    iget-object v13, v12, Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder;->profileImage:Lcom/airbnb/android/views/HaloImageView;

    invoke-virtual {v8}, Lcom/airbnb/android/models/Reservation;->getGuest()Lcom/airbnb/android/models/User;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/airbnb/android/views/HaloImageView;->setImageUrlForUser(Lcom/airbnb/android/models/User;)V

    .line 165
    iget-object v13, v12, Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v8}, Lcom/airbnb/android/models/Reservation;->getGuest()Lcom/airbnb/android/models/User;

    move-result-object v14

    invoke-virtual {v14}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual/range {p3 .. p3}, Lcom/airbnb/android/models/Alert;->getThread()Lcom/airbnb/android/models/MessageThread;

    move-result-object v13

    invoke-virtual {v13}, Lcom/airbnb/android/models/MessageThread;->isUnread()Z

    move-result v5

    .line 168
    .local v5, "isUnread":Z
    iget-object v14, v12, Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder;->unreadDot:Landroid/view/View;

    invoke-virtual/range {p3 .. p3}, Lcom/airbnb/android/models/Alert;->isViewed()Z

    move-result v13

    if-eqz v13, :cond_e1

    const/16 v13, 0x8

    :goto_66
    invoke-virtual {v14, v13}, Landroid/view/View;->setVisibility(I)V

    .line 170
    if-eqz v5, :cond_e3

    invoke-virtual/range {p3 .. p3}, Lcom/airbnb/android/models/Alert;->getThread()Lcom/airbnb/android/models/MessageThread;

    move-result-object v13

    invoke-virtual {v13}, Lcom/airbnb/android/models/MessageThread;->isResponded()Z

    move-result v13

    if-eqz v13, :cond_e3

    .line 171
    iget-object v13, v12, Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder;->details:Landroid/widget/TextView;

    invoke-virtual/range {p3 .. p3}, Lcom/airbnb/android/models/Alert;->getThread()Lcom/airbnb/android/models/MessageThread;

    move-result-object v14

    invoke-virtual {v14}, Lcom/airbnb/android/models/MessageThread;->getPreview()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :goto_82
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/airbnb/android/models/Reservation;->getStatusString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    .local v10, "sb":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/adapters/HHAlertsAdapter;->getNumListings()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_146

    .line 183
    const v13, 0x7f0e00a6

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Lcom/airbnb/android/models/Reservation;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v14

    invoke-virtual {v14}, Lcom/airbnb/android/models/Listing;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v8}, Lcom/airbnb/android/models/Reservation;->getStatusString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const v15, 0x7f0a0013

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v14, v15}, Lcom/airbnb/android/adapters/HHAlertsAdapter;->setupColorSpan(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/text/Spannable;

    move-result-object v11

    .line 188
    .local v11, "span":Landroid/text/Spannable;
    :goto_bd
    iget-object v13, v12, Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder;->status:Landroid/widget/TextView;

    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    return-void

    .line 159
    .end local v5    # "isUnread":Z
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    .end local v11    # "span":Landroid/text/Spannable;
    :cond_c3
    iget-object v13, v12, Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder;->timePassed:Landroid/widget/TextView;

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v4, v14}, Lcom/airbnb/android/utils/DateHelper;->getTimeRemaining(Landroid/content/Context;Ljava/util/Date;Z)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v13, v12, Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder;->timePassed:Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a002b

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3e

    .line 168
    .restart local v5    # "isUnread":Z
    :cond_e1
    const/4 v13, 0x0

    goto :goto_66

    .line 173
    :cond_e3
    invoke-virtual {v8}, Lcom/airbnb/android/models/Reservation;->getStartDate()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v8}, Lcom/airbnb/android/models/Reservation;->getEndDate()Ljava/util/Date;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lcom/airbnb/android/adapters/HHAlertsAdapter;->getDateFormattedString(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 174
    .local v9, "reservationDates":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d002d

    invoke-virtual {v8}, Lcom/airbnb/android/models/Reservation;->getGuestCount()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v8}, Lcom/airbnb/android/models/Reservation;->getGuestCount()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 175
    .local v6, "numGuests":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/airbnb/android/utils/CurrencyHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/CurrencyHelper;

    move-result-object v13

    invoke-virtual {v8}, Lcom/airbnb/android/models/Reservation;->getPayoutPriceNative()I

    move-result v14

    int-to-double v14, v14

    const/16 v16, 0x1

    invoke-virtual/range {v13 .. v16}, Lcom/airbnb/android/utils/CurrencyHelper;->formatNativeCurrency(DZ)Ljava/lang/String;

    move-result-object v7

    .line 177
    .local v7, "payout":Ljava/lang/String;
    iget-object v13, v12, Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder;->details:Landroid/widget/TextView;

    const v14, 0x7f0e021b

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v9, v15, v16

    const/16 v16, 0x1

    aput-object v6, v15, v16

    const/16 v16, 0x2

    aput-object v7, v15, v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/airbnb/android/utils/MiscUtils;->fromHtmlSafe(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_82

    .line 186
    .end local v6    # "numGuests":Ljava/lang/String;
    .end local v7    # "payout":Ljava/lang/String;
    .end local v9    # "reservationDates":Ljava/lang/String;
    .restart local v10    # "sb":Ljava/lang/StringBuilder;
    :cond_146
    invoke-virtual {v8}, Lcom/airbnb/android/models/Reservation;->getStatusString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const v15, 0x7f0a0013

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v14, v15}, Lcom/airbnb/android/adapters/HHAlertsAdapter;->setupColorSpan(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/text/Spannable;

    move-result-object v11

    .restart local v11    # "span":Landroid/text/Spannable;
    goto/16 :goto_bd
.end method

.method private setupWebViewRow(Landroid/view/View;Lcom/airbnb/android/models/Alert;)V
    .registers 6
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "alert"    # Lcom/airbnb/android/models/Alert;

    .prologue
    .line 250
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/adapters/HHAlertsAdapter$WebViewAlertViewHolder;

    .line 252
    .local v0, "viewHolder":Lcom/airbnb/android/adapters/HHAlertsAdapter$WebViewAlertViewHolder;
    iget-object v1, v0, Lcom/airbnb/android/adapters/HHAlertsAdapter$WebViewAlertViewHolder;->image:Lcom/airbnb/android/views/AirImageView;

    invoke-virtual {p2}, Lcom/airbnb/android/models/Alert;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/AirImageView;->setImageUrl(Ljava/lang/String;)V

    .line 254
    iget-object v1, v0, Lcom/airbnb/android/adapters/HHAlertsAdapter$WebViewAlertViewHolder;->titleText:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/airbnb/android/models/Alert;->getTitleText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v1, v0, Lcom/airbnb/android/adapters/HHAlertsAdapter$WebViewAlertViewHolder;->bodyText:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/airbnb/android/models/Alert;->getBodyText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v2, v0, Lcom/airbnb/android/adapters/HHAlertsAdapter$WebViewAlertViewHolder;->unreadDot:Landroid/view/View;

    invoke-virtual {p2}, Lcom/airbnb/android/models/Alert;->isViewed()Z

    move-result v1

    if-nez v1, :cond_2e

    const/4 v1, 0x1

    :goto_2a
    invoke-static {v2, v1}, Lcom/airbnb/android/utils/MiscUtils;->setVisibleIf(Landroid/view/View;Z)V

    .line 257
    return-void

    .line 256
    :cond_2e
    const/4 v1, 0x0

    goto :goto_2a
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/airbnb/android/adapters/HHAlertsAdapter;->mAlerts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/airbnb/android/adapters/HHAlertsAdapter;->mAlerts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_9
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/airbnb/android/adapters/HHAlertsAdapter;->mAlerts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 92
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 55
    iget-object v1, p0, Lcom/airbnb/android/adapters/HHAlertsAdapter;->mAlerts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 56
    sget-object v1, Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;->AlertsEmptySection:Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;->ordinal()I

    move-result v1

    .line 59
    :goto_e
    return v1

    .line 58
    :cond_f
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/HHAlertsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Alert;

    .line 59
    .local v0, "alert":Lcom/airbnb/android/models/Alert;
    invoke-direct {p0, v0}, Lcom/airbnb/android/adapters/HHAlertsAdapter;->getAlertRowType(Lcom/airbnb/android/models/Alert;)I

    move-result v1

    goto :goto_e
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 97
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 99
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/HHAlertsAdapter;->getItemViewType(I)I

    move-result v2

    .line 101
    .local v2, "type":I
    sget-object v3, Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;->AlertsEmptySection:Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;

    invoke-virtual {v3}, Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_23

    .line 102
    if-nez p2, :cond_1e

    .line 103
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030142

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 106
    :cond_1e
    const/4 v3, 0x1

    invoke-virtual {p0, v1, p2, v3}, Lcom/airbnb/android/adapters/HHAlertsAdapter;->setupEmptyState(Landroid/content/Context;Landroid/view/View;Z)V

    .line 119
    :goto_22
    return-object p2

    .line 108
    :cond_23
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/HHAlertsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Alert;

    .line 110
    .local v0, "alert":Lcom/airbnb/android/models/Alert;
    if-nez p2, :cond_3a

    .line 111
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/airbnb/android/adapters/HHAlertsAdapter;->getAlertLayoutType(Lcom/airbnb/android/models/Alert;)I

    move-result v4

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 113
    invoke-direct {p0, p2, v0}, Lcom/airbnb/android/adapters/HHAlertsAdapter;->createAlertViewHolder(Landroid/view/View;Lcom/airbnb/android/models/Alert;)V

    .line 116
    :cond_3a
    invoke-direct {p0, v1, p2, v0}, Lcom/airbnb/android/adapters/HHAlertsAdapter;->setupAlertRow(Landroid/content/Context;Landroid/view/View;Lcom/airbnb/android/models/Alert;)V

    goto :goto_22
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 65
    invoke-static {}, Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;->values()[Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public isEnabled(I)Z
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/HHAlertsAdapter;->getItemViewType(I)I

    move-result v0

    .line 83
    .local v0, "type":I
    sget-object v1, Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;->AlertsEmptySection:Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_e

    .line 84
    const/4 v1, 0x0

    .line 87
    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x1

    goto :goto_d
.end method

.method public setAlerts(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Alert;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 349
    .local p1, "alerts":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Alert;>;"
    iput-object p1, p0, Lcom/airbnb/android/adapters/HHAlertsAdapter;->mAlerts:Ljava/util/List;

    .line 350
    return-void
.end method
