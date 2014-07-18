.class public Lcom/airbnb/android/views/CalendarPopupView;
.super Ljava/lang/Object;
.source "CalendarPopupView.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createCheckpointPopupView(Landroid/view/View;Landroid/content/Context;Lcom/airbnb/android/models/Reservation;Landroid/widget/PopupWindow$OnDismissListener;)Landroid/widget/PopupWindow;
    .registers 11
    .param p0, "view"    # Landroid/view/View;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reservation"    # Lcom/airbnb/android/models/Reservation;
    .param p3, "dismiss"    # Landroid/widget/PopupWindow$OnDismissListener;

    .prologue
    .line 62
    const v6, 0x7f0301a0

    .line 64
    .local v6, "layout":I
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 66
    .local v4, "content":Landroid/view/View;
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/airbnb/android/views/CalendarPopupView;->setupPopup(Landroid/view/View;Landroid/content/Context;Lcom/airbnb/android/models/Reservation;Landroid/widget/PopupWindow$OnDismissListener;Landroid/view/View;Z)Landroid/widget/PopupWindow;

    move-result-object v0

    return-object v0
.end method

.method public static createPopupView(Landroid/view/View;Landroid/content/Context;Lcom/airbnb/android/models/Reservation;ZLandroid/widget/PopupWindow$OnDismissListener;)Landroid/widget/PopupWindow;
    .registers 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reservation"    # Lcom/airbnb/android/models/Reservation;
    .param p3, "confirmed"    # Z
    .param p4, "dismiss"    # Landroid/widget/PopupWindow$OnDismissListener;

    .prologue
    .line 27
    invoke-virtual {p2}, Lcom/airbnb/android/models/Reservation;->getStatus()Lcom/airbnb/android/models/ReservationStatus;

    move-result-object v0

    sget-object v1, Lcom/airbnb/android/models/ReservationStatus;->Checkpoint:Lcom/airbnb/android/models/ReservationStatus;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/ReservationStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 28
    invoke-static {p0, p1, p2, p4}, Lcom/airbnb/android/views/CalendarPopupView;->createCheckpointPopupView(Landroid/view/View;Landroid/content/Context;Lcom/airbnb/android/models/Reservation;Landroid/widget/PopupWindow$OnDismissListener;)Landroid/widget/PopupWindow;

    move-result-object v0

    .line 30
    :goto_10
    return-object v0

    :cond_11
    invoke-static {p0, p1, p2, p4}, Lcom/airbnb/android/views/CalendarPopupView;->createReservationPopupView(Landroid/view/View;Landroid/content/Context;Lcom/airbnb/android/models/Reservation;Landroid/widget/PopupWindow$OnDismissListener;)Landroid/widget/PopupWindow;

    move-result-object v0

    goto :goto_10
.end method

.method private static createReservationPopupView(Landroid/view/View;Landroid/content/Context;Lcom/airbnb/android/models/Reservation;Landroid/widget/PopupWindow$OnDismissListener;)Landroid/widget/PopupWindow;
    .registers 17
    .param p0, "view"    # Landroid/view/View;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reservation"    # Lcom/airbnb/android/models/Reservation;
    .param p3, "dismiss"    # Landroid/widget/PopupWindow$OnDismissListener;

    .prologue
    .line 35
    const v7, 0x7f0301a1

    .line 37
    .local v7, "layout":I
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v7, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 38
    .local v4, "content":Landroid/view/View;
    const v0, 0x7f080431

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/airbnb/android/models/Reservation;->getGuest()Lcom/airbnb/android/models/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    const v0, 0x7f080432

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/airbnb/android/models/Reservation;->getStartDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/airbnb/android/utils/DateHelper;->getArrivalTime(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    const/4 v0, 0x3

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0039

    invoke-virtual {p2}, Lcom/airbnb/android/models/Reservation;->getReservedNightsCount()I

    move-result v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {p2}, Lcom/airbnb/android/models/Reservation;->getReservedNightsCount()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v5, v11

    invoke-virtual {v1, v2, v3, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d002d

    invoke-virtual {p2}, Lcom/airbnb/android/models/Reservation;->getGuestCount()I

    move-result v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {p2}, Lcom/airbnb/android/models/Reservation;->getGuestCount()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v5, v11

    invoke-virtual {v1, v2, v3, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    const/4 v0, 0x2

    invoke-static {p1}, Lcom/airbnb/android/utils/CurrencyHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/CurrencyHelper;

    move-result-object v1

    invoke-virtual {p2}, Lcom/airbnb/android/models/Reservation;->getBasePrice()I

    move-result v2

    int-to-double v2, v2

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v5}, Lcom/airbnb/android/utils/CurrencyHelper;->formatNativeCurrency(DZ)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    .line 47
    .local v9, "stats":[Ljava/lang/String;
    const v0, 0x7f0e00a6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 49
    .local v8, "statItems":Ljava/lang/String;
    const v0, 0x7f080433

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    const v0, 0x7f080434

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 52
    .local v10, "status":Landroid/widget/TextView;
    invoke-virtual {p2}, Lcom/airbnb/android/models/Reservation;->getStatus()Lcom/airbnb/android/models/ReservationStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/ReservationStatus;->getDisplayStringId()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(I)V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p2}, Lcom/airbnb/android/models/Reservation;->getStatus()Lcom/airbnb/android/models/ReservationStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/ReservationStatus;->getColorId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    const v0, 0x7f080430

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/airbnb/android/views/HaloImageView;

    .line 56
    .local v6, "halo":Lcom/airbnb/android/views/HaloImageView;
    invoke-virtual {p2}, Lcom/airbnb/android/models/Reservation;->getGuest()Lcom/airbnb/android/models/User;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/airbnb/android/views/HaloImageView;->setImageUrlForUser(Lcom/airbnb/android/models/User;)V

    .line 58
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    invoke-static/range {v0 .. v5}, Lcom/airbnb/android/views/CalendarPopupView;->setupPopup(Landroid/view/View;Landroid/content/Context;Lcom/airbnb/android/models/Reservation;Landroid/widget/PopupWindow$OnDismissListener;Landroid/view/View;Z)Landroid/widget/PopupWindow;

    move-result-object v0

    return-object v0
.end method

.method private static setupPopup(Landroid/view/View;Landroid/content/Context;Lcom/airbnb/android/models/Reservation;Landroid/widget/PopupWindow$OnDismissListener;Landroid/view/View;Z)Landroid/widget/PopupWindow;
    .registers 22
    .param p0, "view"    # Landroid/view/View;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reservation"    # Lcom/airbnb/android/models/Reservation;
    .param p3, "dismiss"    # Landroid/widget/PopupWindow$OnDismissListener;
    .param p4, "content"    # Landroid/view/View;
    .param p5, "redirectToRO"    # Z

    .prologue
    .line 70
    new-instance v7, Landroid/widget/PopupWindow;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 71
    .local v7, "pw":Landroid/widget/PopupWindow;
    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 72
    const/4 v13, -0x2

    invoke-virtual {v7, v13}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 73
    new-instance v13, Landroid/graphics/drawable/ColorDrawable;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v7, v13}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    const/4 v13, -0x2

    invoke-virtual {v7, v13}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 75
    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 76
    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 77
    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 78
    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 80
    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v5

    .line 81
    .local v5, "contentView":Landroid/view/View;
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v13, -0x2

    const/4 v14, -0x2

    invoke-direct {v6, v13, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 82
    .local v6, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    const/4 v13, -0x2

    const/4 v14, -0x2

    invoke-virtual {v5, v13, v14}, Landroid/view/View;->measure(II)V

    .line 85
    if-eqz p5, :cond_4f

    .line 86
    new-instance v13, Lcom/airbnb/android/views/CalendarPopupView$1;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v13, v0, v1}, Lcom/airbnb/android/views/CalendarPopupView$1;-><init>(Landroid/content/Context;Lcom/airbnb/android/models/Reservation;)V

    invoke-virtual {v5, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    :cond_4f
    const v13, 0x7f08042f

    invoke-virtual {v5, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 95
    .local v3, "caret":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 96
    .local v9, "rootWidth":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 98
    .local v8, "rootHeight":I
    invoke-static/range {p0 .. p0}, Lcom/airbnb/android/utils/MiscUtils;->getScreenLocation(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 100
    .local v2, "anchorRect":Landroid/graphics/Rect;
    invoke-static {}, Lcom/airbnb/android/utils/MiscUtils;->getScreenSize()Landroid/graphics/Point;

    move-result-object v10

    .line 101
    .local v10, "size":Landroid/graphics/Point;
    const/4 v13, 0x0

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v14

    div-int/lit8 v15, v9, 0x2

    sub-int/2addr v14, v15

    iget v15, v10, Landroid/graphics/Point;->x:I

    sub-int/2addr v15, v9

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 102
    .local v11, "xPos":I
    iget v13, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v8

    const/high16 v14, 0x40000000

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v14, v15

    float-to-int v14, v14

    add-int v12, v13, v14

    .line 103
    .local v12, "yPos":I
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v7, v0, v13, v11, v12}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 105
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    sub-int/2addr v13, v11

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    sub-int v4, v13, v14

    .line 106
    .local v4, "caretPadding":I
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v3, v4, v13, v14, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 108
    return-object v7
.end method
