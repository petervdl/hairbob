.class public Lcom/airbnb/android/adapters/SquareCalendarAdapter;
.super Lcom/airbnb/android/adapters/BaseCalendarAdapter;
.source "SquareCalendarAdapter.java"


# instance fields
.field private mSelectedReservation:Lcom/airbnb/android/interfaces/Reservationable;

.field private mShouldAnimate:Z

.field private final mSquaresMap:Lcom/airbnb/android/models/SquareMap;


# direct methods
.method public constructor <init>(Ljava/util/Calendar;Lcom/airbnb/android/models/SquareMap;)V
    .registers 3
    .param p1, "month"    # Ljava/util/Calendar;
    .param p2, "squares"    # Lcom/airbnb/android/models/SquareMap;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;-><init>(Ljava/util/Calendar;)V

    .line 30
    iput-object p2, p0, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->mSquaresMap:Lcom/airbnb/android/models/SquareMap;

    .line 31
    return-void
.end method

.method static synthetic access$002(Lcom/airbnb/android/adapters/SquareCalendarAdapter;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/adapters/SquareCalendarAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->mShouldAnimate:Z

    return p1
.end method

.method private hasDisplayStatus(Lcom/airbnb/android/models/CalendarSquare;)Z
    .registers 3
    .param p1, "day"    # Lcom/airbnb/android/models/CalendarSquare;

    .prologue
    .line 186
    sget-object v0, Lcom/airbnb/android/models/ReservationStatus;->Accepted:Lcom/airbnb/android/models/ReservationStatus;

    invoke-direct {p0, p1, v0}, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->isStatus(Lcom/airbnb/android/models/CalendarSquare;Lcom/airbnb/android/models/ReservationStatus;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/airbnb/android/models/ReservationStatus;->Pending:Lcom/airbnb/android/models/ReservationStatus;

    invoke-direct {p0, p1, v0}, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->isStatus(Lcom/airbnb/android/models/CalendarSquare;Lcom/airbnb/android/models/ReservationStatus;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private isStatus(Lcom/airbnb/android/models/CalendarSquare;Lcom/airbnb/android/models/ReservationStatus;)Z
    .registers 4
    .param p1, "day"    # Lcom/airbnb/android/models/CalendarSquare;
    .param p2, "status"    # Lcom/airbnb/android/models/ReservationStatus;

    .prologue
    .line 195
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/airbnb/android/models/CalendarSquare;->getReservation()Lcom/airbnb/android/models/SparseCalendarReservation;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/airbnb/android/models/CalendarSquare;->getStatus()Lcom/airbnb/android/models/ReservationStatus;

    move-result-object v0

    if-ne v0, p2, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private setSlashSelectionOpacity(Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;Lcom/airbnb/android/models/CalendarSquare;)V
    .registers 5
    .param p1, "slash"    # Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;
    .param p2, "day"    # Lcom/airbnb/android/models/CalendarSquare;

    .prologue
    .line 60
    if-eqz p1, :cond_15

    if-eqz p2, :cond_15

    invoke-virtual {p2}, Lcom/airbnb/android/models/CalendarSquare;->getReservation()Lcom/airbnb/android/models/SparseCalendarReservation;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->mSelectedReservation:Lcom/airbnb/android/interfaces/Reservationable;

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->selectionIdMatches(Lcom/airbnb/android/interfaces/Reservationable;Lcom/airbnb/android/interfaces/Reservationable;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 61
    sget v0, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;->SELECTION_ALPHA:I

    invoke-virtual {p1, v0}, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;->setAlpha(I)V

    .line 63
    :cond_15
    return-void
.end method

.method private slashFill(Lcom/airbnb/android/models/CalendarSquare;Lcom/airbnb/android/models/CalendarSquare;Lcom/airbnb/android/models/ReservationStatus;ILcom/airbnb/android/utils/DrawableCompositor;)V
    .registers 13
    .param p1, "today"    # Lcom/airbnb/android/models/CalendarSquare;
    .param p2, "yesterday"    # Lcom/airbnb/android/models/CalendarSquare;
    .param p3, "status"    # Lcom/airbnb/android/models/ReservationStatus;
    .param p4, "color"    # I
    .param p5, "compositor"    # Lcom/airbnb/android/utils/DrawableCompositor;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 70
    invoke-direct {p0, p1, p3}, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->isStatus(Lcom/airbnb/android/models/CalendarSquare;Lcom/airbnb/android/models/ReservationStatus;)Z

    move-result v1

    .line 71
    .local v1, "todayHasStatus":Z
    invoke-direct {p0, p2, p3}, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->isStatus(Lcom/airbnb/android/models/CalendarSquare;Lcom/airbnb/android/models/ReservationStatus;)Z

    move-result v2

    .line 73
    .local v2, "yesterdayHasStatus":Z
    if-eqz v1, :cond_2b

    if-eqz v2, :cond_2b

    invoke-virtual {p1}, Lcom/airbnb/android/models/CalendarSquare;->getReservationId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2}, Lcom/airbnb/android/models/CalendarSquare;->getReservationId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 74
    invoke-static {v6, v5, p4, p5}, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;->generateSlash(ZZILcom/airbnb/android/utils/DrawableCompositor;)Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;

    move-result-object v0

    .line 75
    .local v0, "slashReference":Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;
    invoke-direct {p0, v0, p2}, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->setSlashSelectionOpacity(Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;Lcom/airbnb/android/models/CalendarSquare;)V

    .line 76
    invoke-static {v5, v6, p4, p5}, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;->generateSlash(ZZILcom/airbnb/android/utils/DrawableCompositor;)Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;

    move-result-object v0

    .line 77
    invoke-direct {p0, v0, p1}, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->setSlashSelectionOpacity(Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;Lcom/airbnb/android/models/CalendarSquare;)V

    .line 83
    :goto_2a
    return-void

    .line 79
    .end local v0    # "slashReference":Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;
    :cond_2b
    invoke-static {v2, v1, p4, p5}, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;->generateSlash(ZZILcom/airbnb/android/utils/DrawableCompositor;)Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;

    move-result-object v0

    .line 80
    .restart local v0    # "slashReference":Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;
    invoke-direct {p0, v0, p1}, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->setSlashSelectionOpacity(Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;Lcom/airbnb/android/models/CalendarSquare;)V

    .line 81
    invoke-direct {p0, v0, p2}, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->setSlashSelectionOpacity(Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;Lcom/airbnb/android/models/CalendarSquare;)V

    goto :goto_2a
.end method


# virtual methods
.method public clearSelectedReservationId()V
    .registers 2

    .prologue
    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->mSelectedReservation:Lcom/airbnb/android/interfaces/Reservationable;

    .line 205
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->notifyDataSetChanged()V

    .line 206
    return-void
.end method

.method public getItem(I)Lcom/airbnb/android/models/CalendarSquare;
    .registers 6
    .param p1, "position"    # I

    .prologue
    .line 51
    iget-object v1, p0, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->mSquaresMap:Lcom/airbnb/android/models/SquareMap;

    iget-object v0, p0, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->mMillisCache:Lcom/airbnb/android/utils/EasyCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/airbnb/android/utils/EasyCache;->getEntry(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/models/SquareMap;->get(J)Lcom/airbnb/android/models/CalendarSquare;

    move-result-object v0

    return-object v0
.end method

.method public getItem(J)Lcom/airbnb/android/models/CalendarSquare;
    .registers 4
    .param p1, "date"    # J

    .prologue
    .line 55
    iget-object v0, p0, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->mSquaresMap:Lcom/airbnb/android/models/SquareMap;

    invoke-virtual {v0, p1, p2}, Lcom/airbnb/android/models/SquareMap;->get(J)Lcom/airbnb/android/models/CalendarSquare;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->getItem(I)Lcom/airbnb/android/models/CalendarSquare;

    move-result-object v0

    return-object v0
.end method

.method protected getPendingColorId()I
    .registers 2

    .prologue
    .line 216
    const v0, 0x7f0a0038

    return v0
.end method

.method protected getPendingTextColorId()I
    .registers 2

    .prologue
    .line 223
    const v0, 0x7f0a0039

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 35
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 37
    iget-object v0, p0, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->mMillisCache:Lcom/airbnb/android/utils/EasyCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/airbnb/android/utils/EasyCache;->getEntry(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 38
    .local v6, "cellTime":J
    iget-object v0, p0, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->mSquaresMap:Lcom/airbnb/android/models/SquareMap;

    invoke-virtual {v0, v6, v7}, Lcom/airbnb/android/models/SquareMap;->get(J)Lcom/airbnb/android/models/CalendarSquare;

    move-result-object v2

    .line 39
    .local v2, "square":Lcom/airbnb/android/models/CalendarSquare;
    iget-object v1, p0, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->mSquaresMap:Lcom/airbnb/android/models/SquareMap;

    new-instance v5, Ljava/util/Date;

    iget-object v0, p0, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->mMillisCache:Lcom/airbnb/android/utils/EasyCache;

    add-int/lit8 v8, p1, -0x1

    add-int/lit8 v9, p1, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lcom/airbnb/android/utils/EasyCache;->getEntry(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {v5, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-static {v5}, Lcom/airbnb/android/utils/DateHelper;->getStringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/airbnb/android/models/SquareMap;->get(Ljava/lang/String;)Lcom/airbnb/android/models/CalendarSquare;

    move-result-object v3

    .line 41
    .local v3, "yesterdaySquare":Lcom/airbnb/android/models/CalendarSquare;
    new-instance v4, Lcom/airbnb/android/utils/DrawableCompositor;

    invoke-direct {v4}, Lcom/airbnb/android/utils/DrawableCompositor;-><init>()V

    .local v4, "compositor":Lcom/airbnb/android/utils/DrawableCompositor;
    move-object v0, p0

    move v1, p1

    move-object v5, p2

    .line 43
    invoke-virtual/range {v0 .. v5}, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->updateView(ILcom/airbnb/android/models/CalendarSquare;Lcom/airbnb/android/models/CalendarSquare;Lcom/airbnb/android/utils/DrawableCompositor;Landroid/view/View;)V

    .line 45
    const v0, 0x7f080068

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/airbnb/android/utils/MiscUtils;->apiSetBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 46
    return-object p2
.end method

.method protected selectionIdMatches(Lcom/airbnb/android/interfaces/Reservationable;Lcom/airbnb/android/interfaces/Reservationable;)Z
    .registers 7
    .param p1, "day"    # Lcom/airbnb/android/interfaces/Reservationable;
    .param p2, "selection"    # Lcom/airbnb/android/interfaces/Reservationable;

    .prologue
    .line 66
    if-eqz p2, :cond_12

    if-eqz p1, :cond_12

    invoke-interface {p1}, Lcom/airbnb/android/interfaces/Reservationable;->getId()J

    move-result-wide v0

    invoke-interface {p2}, Lcom/airbnb/android/interfaces/Reservationable;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public setSelectedReservation(Lcom/airbnb/android/interfaces/Reservationable;)V
    .registers 2
    .param p1, "reservation"    # Lcom/airbnb/android/interfaces/Reservationable;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->mSelectedReservation:Lcom/airbnb/android/interfaces/Reservationable;

    .line 200
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->notifyDataSetChanged()V

    .line 201
    return-void
.end method

.method public setShouldAnimate(Z)V
    .registers 2
    .param p1, "shouldAnimate"    # Z

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->mShouldAnimate:Z

    .line 210
    return-void
.end method

.method public updateView(ILcom/airbnb/android/models/CalendarSquare;Lcom/airbnb/android/models/CalendarSquare;Lcom/airbnb/android/utils/DrawableCompositor;Landroid/view/View;)V
    .registers 23
    .param p1, "position"    # I
    .param p2, "today"    # Lcom/airbnb/android/models/CalendarSquare;
    .param p3, "yesterday"    # Lcom/airbnb/android/models/CalendarSquare;
    .param p4, "compositor"    # Lcom/airbnb/android/utils/DrawableCompositor;
    .param p5, "convertView"    # Landroid/view/View;

    .prologue
    .line 101
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 104
    .local v11, "resources":Landroid/content/res/Resources;
    if-eqz p2, :cond_fc

    invoke-virtual/range {p2 .. p2}, Lcom/airbnb/android/models/CalendarSquare;->getAvailability()Z

    move-result v3

    if-nez v3, :cond_fc

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->hasDisplayStatus(Lcom/airbnb/android/models/CalendarSquare;)Z

    move-result v3

    if-nez v3, :cond_fc

    const/4 v13, 0x1

    .line 105
    .local v13, "todayBlocked":Z
    :goto_17
    if-eqz p3, :cond_ff

    invoke-virtual/range {p3 .. p3}, Lcom/airbnb/android/models/CalendarSquare;->getAvailability()Z

    move-result v3

    if-nez v3, :cond_ff

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->hasDisplayStatus(Lcom/airbnb/android/models/CalendarSquare;)Z

    move-result v3

    if-nez v3, :cond_ff

    const/16 v16, 0x1

    .line 107
    .local v16, "yesterdayBlocked":Z
    :goto_2b
    if-eqz p2, :cond_103

    invoke-virtual/range {p2 .. p2}, Lcom/airbnb/android/models/CalendarSquare;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_103

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->mShouldAnimate:Z

    if-nez v3, :cond_43

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->hasDisplayStatus(Lcom/airbnb/android/models/CalendarSquare;)Z

    move-result v3

    if-nez v3, :cond_103

    :cond_43
    const/4 v14, 0x1

    .line 108
    .local v14, "todaySelected":Z
    :goto_44
    if-eqz p3, :cond_106

    invoke-virtual/range {p3 .. p3}, Lcom/airbnb/android/models/CalendarSquare;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_106

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->mShouldAnimate:Z

    if-nez v3, :cond_5c

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->hasDisplayStatus(Lcom/airbnb/android/models/CalendarSquare;)Z

    move-result v3

    if-nez v3, :cond_106

    :cond_5c
    const/4 v15, 0x1

    .line 110
    .local v15, "yeseterdaySelected":Z
    :goto_5d
    const v3, 0x7f0a0036

    invoke-virtual {v11, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    move/from16 v0, v16

    move-object/from16 v1, p4

    invoke-static {v0, v13, v3, v1}, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;->generateSlash(ZZILcom/airbnb/android/utils/DrawableCompositor;)Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;

    .line 112
    const v3, 0x7f0a003a

    invoke-virtual {v11, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    move-object/from16 v0, p4

    invoke-static {v15, v14, v3, v0}, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;->generateSlash(ZZILcom/airbnb/android/utils/DrawableCompositor;)Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;

    move-result-object v12

    .line 113
    .local v12, "slash":Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;
    if-eqz v12, :cond_9b

    .line 114
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->mShouldAnimate:Z

    if-eqz v3, :cond_9b

    .line 115
    const v3, 0x7f080068

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;->animate(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v9

    .line 116
    .local v9, "animator":Landroid/animation/Animator;
    new-instance v3, Lcom/airbnb/android/adapters/SquareCalendarAdapter$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v3, v0, v1, v2}, Lcom/airbnb/android/adapters/SquareCalendarAdapter$1;-><init>(Lcom/airbnb/android/adapters/SquareCalendarAdapter;Lcom/airbnb/android/models/CalendarSquare;Lcom/airbnb/android/models/CalendarSquare;)V

    invoke-virtual {v9, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 153
    .end local v9    # "animator":Landroid/animation/Animator;
    :cond_9b
    sget-object v6, Lcom/airbnb/android/models/ReservationStatus;->Accepted:Lcom/airbnb/android/models/ReservationStatus;

    const v3, 0x7f0a0037

    invoke-virtual {v11, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->slashFill(Lcom/airbnb/android/models/CalendarSquare;Lcom/airbnb/android/models/CalendarSquare;Lcom/airbnb/android/models/ReservationStatus;ILcom/airbnb/android/utils/DrawableCompositor;)V

    .line 154
    sget-object v6, Lcom/airbnb/android/models/ReservationStatus;->Pending:Lcom/airbnb/android/models/ReservationStatus;

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->getPendingColorId()I

    move-result v3

    invoke-virtual {v11, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->slashFill(Lcom/airbnb/android/models/CalendarSquare;Lcom/airbnb/android/models/CalendarSquare;Lcom/airbnb/android/models/ReservationStatus;ILcom/airbnb/android/utils/DrawableCompositor;)V

    .line 158
    sget-object v3, Lcom/airbnb/android/models/ReservationStatus;->Accepted:Lcom/airbnb/android/models/ReservationStatus;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->isStatus(Lcom/airbnb/android/models/CalendarSquare;Lcom/airbnb/android/models/ReservationStatus;)Z

    move-result v3

    if-eqz v3, :cond_109

    .line 160
    const v10, 0x7f0a00a4

    .line 177
    .local v10, "colorId":I
    :goto_d3
    const v3, 0x7f080069

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 180
    invoke-virtual/range {p0 .. p1}, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->isToday(I)Z

    move-result v3

    if-eqz v3, :cond_fb

    .line 181
    const v3, 0x7f020057

    invoke-virtual {v11, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lcom/airbnb/android/utils/DrawableCompositor;->addDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 183
    :cond_fb
    return-void

    .line 104
    .end local v10    # "colorId":I
    .end local v12    # "slash":Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;
    .end local v13    # "todayBlocked":Z
    .end local v14    # "todaySelected":Z
    .end local v15    # "yeseterdaySelected":Z
    .end local v16    # "yesterdayBlocked":Z
    :cond_fc
    const/4 v13, 0x0

    goto/16 :goto_17

    .line 105
    .restart local v13    # "todayBlocked":Z
    :cond_ff
    const/16 v16, 0x0

    goto/16 :goto_2b

    .line 107
    .restart local v16    # "yesterdayBlocked":Z
    :cond_103
    const/4 v14, 0x0

    goto/16 :goto_44

    .line 108
    .restart local v14    # "todaySelected":Z
    :cond_106
    const/4 v15, 0x0

    goto/16 :goto_5d

    .line 161
    .restart local v12    # "slash":Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;
    .restart local v15    # "yeseterdaySelected":Z
    :cond_109
    sget-object v3, Lcom/airbnb/android/models/ReservationStatus;->Pending:Lcom/airbnb/android/models/ReservationStatus;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->isStatus(Lcom/airbnb/android/models/CalendarSquare;Lcom/airbnb/android/models/ReservationStatus;)Z

    move-result v3

    if-eqz v3, :cond_11a

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->getPendingTextColorId()I

    move-result v10

    .restart local v10    # "colorId":I
    goto :goto_d3

    .line 164
    .end local v10    # "colorId":I
    :cond_11a
    if-eqz p2, :cond_126

    invoke-virtual/range {p2 .. p2}, Lcom/airbnb/android/models/CalendarSquare;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_126

    .line 166
    const v10, 0x7f0a0022

    .restart local v10    # "colorId":I
    goto :goto_d3

    .line 167
    .end local v10    # "colorId":I
    :cond_126
    if-eqz v13, :cond_12c

    .line 169
    const v10, 0x7f0a0014

    .restart local v10    # "colorId":I
    goto :goto_d3

    .line 170
    .end local v10    # "colorId":I
    :cond_12c
    invoke-virtual/range {p0 .. p1}, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->isBeforeToday(I)Z

    move-result v3

    if-eqz v3, :cond_136

    .line 172
    const v10, 0x7f0a001b

    .restart local v10    # "colorId":I
    goto :goto_d3

    .line 175
    .end local v10    # "colorId":I
    :cond_136
    const v10, 0x7f0a0022

    .restart local v10    # "colorId":I
    goto :goto_d3
.end method
