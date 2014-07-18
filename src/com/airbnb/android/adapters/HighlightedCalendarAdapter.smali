.class public Lcom/airbnb/android/adapters/HighlightedCalendarAdapter;
.super Lcom/airbnb/android/adapters/SquareCalendarAdapter;
.source "HighlightedCalendarAdapter.java"


# instance fields
.field private mHighlightedReservation:Lcom/airbnb/android/interfaces/Reservationable;


# direct methods
.method public constructor <init>(Ljava/util/Calendar;Lcom/airbnb/android/models/SquareMap;Lcom/airbnb/android/interfaces/Reservationable;)V
    .registers 4
    .param p1, "month"    # Ljava/util/Calendar;
    .param p2, "squares"    # Lcom/airbnb/android/models/SquareMap;
    .param p3, "highlightedReservation"    # Lcom/airbnb/android/interfaces/Reservationable;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/adapters/SquareCalendarAdapter;-><init>(Ljava/util/Calendar;Lcom/airbnb/android/models/SquareMap;)V

    .line 22
    iput-object p3, p0, Lcom/airbnb/android/adapters/HighlightedCalendarAdapter;->mHighlightedReservation:Lcom/airbnb/android/interfaces/Reservationable;

    .line 23
    return-void
.end method


# virtual methods
.method protected getPendingColorId()I
    .registers 2

    .prologue
    .line 43
    const v0, 0x7f0a0036

    return v0
.end method

.method protected getPendingTextColorId()I
    .registers 2

    .prologue
    .line 48
    const v0, 0x7f0a0014

    return v0
.end method

.method public updateView(ILcom/airbnb/android/models/CalendarSquare;Lcom/airbnb/android/models/CalendarSquare;Lcom/airbnb/android/utils/DrawableCompositor;Landroid/view/View;)V
    .registers 15
    .param p1, "position"    # I
    .param p2, "today"    # Lcom/airbnb/android/models/CalendarSquare;
    .param p3, "yesterday"    # Lcom/airbnb/android/models/CalendarSquare;
    .param p4, "compositor"    # Lcom/airbnb/android/utils/DrawableCompositor;
    .param p5, "convertView"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 27
    invoke-super/range {p0 .. p5}, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->updateView(ILcom/airbnb/android/models/CalendarSquare;Lcom/airbnb/android/models/CalendarSquare;Lcom/airbnb/android/utils/DrawableCompositor;Landroid/view/View;)V

    .line 29
    sget-object v7, Lcom/airbnb/android/models/ReservationStatus;->Accepted:Lcom/airbnb/android/models/ReservationStatus;

    iget-object v8, p0, Lcom/airbnb/android/adapters/HighlightedCalendarAdapter;->mHighlightedReservation:Lcom/airbnb/android/interfaces/Reservationable;

    invoke-interface {v8}, Lcom/airbnb/android/interfaces/Reservationable;->getStatus()Lcom/airbnb/android/models/ReservationStatus;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/airbnb/android/models/ReservationStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 30
    .local v0, "isAccepted":Z
    if-eqz v0, :cond_63

    const v1, 0x7f0a0028

    .line 31
    .local v1, "slashColorId":I
    :goto_16
    if-eqz v0, :cond_67

    const v2, 0x7f0a00a4

    .line 32
    .local v2, "slashTextColorId":I
    :goto_1b
    iget-object v7, p0, Lcom/airbnb/android/adapters/HighlightedCalendarAdapter;->mHighlightedReservation:Lcom/airbnb/android/interfaces/Reservationable;

    if-eqz v7, :cond_6b

    if-eqz p2, :cond_6b

    iget-object v7, p0, Lcom/airbnb/android/adapters/HighlightedCalendarAdapter;->mHighlightedReservation:Lcom/airbnb/android/interfaces/Reservationable;

    invoke-virtual {p2}, Lcom/airbnb/android/models/CalendarSquare;->getDate()Ljava/util/Date;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/airbnb/android/models/Reservation;->dateWithinReservation(Lcom/airbnb/android/interfaces/Reservationable;Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_6b

    move v3, v5

    .line 33
    .local v3, "todayHighlight":Z
    :goto_2e
    iget-object v7, p0, Lcom/airbnb/android/adapters/HighlightedCalendarAdapter;->mHighlightedReservation:Lcom/airbnb/android/interfaces/Reservationable;

    if-eqz v7, :cond_6d

    if-eqz p3, :cond_6d

    iget-object v7, p0, Lcom/airbnb/android/adapters/HighlightedCalendarAdapter;->mHighlightedReservation:Lcom/airbnb/android/interfaces/Reservationable;

    invoke-virtual {p3}, Lcom/airbnb/android/models/CalendarSquare;->getDate()Ljava/util/Date;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/airbnb/android/models/Reservation;->dateWithinReservation(Lcom/airbnb/android/interfaces/Reservationable;Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_6d

    move v4, v5

    .line 34
    .local v4, "yesterdayHighlight":Z
    :goto_41
    invoke-virtual {p5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v4, v3, v5, p4}, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;->generateSlash(ZZILcom/airbnb/android/utils/DrawableCompositor;)Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;

    .line 36
    if-eqz v3, :cond_62

    .line 37
    const v5, 0x7f080069

    invoke-virtual {p5, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    :cond_62
    return-void

    .line 30
    .end local v1    # "slashColorId":I
    .end local v2    # "slashTextColorId":I
    .end local v3    # "todayHighlight":Z
    .end local v4    # "yesterdayHighlight":Z
    :cond_63
    const v1, 0x7f0a0013

    goto :goto_16

    .line 31
    .restart local v1    # "slashColorId":I
    :cond_67
    const v2, 0x7f0a0039

    goto :goto_1b

    .restart local v2    # "slashTextColorId":I
    :cond_6b
    move v3, v6

    .line 32
    goto :goto_2e

    .restart local v3    # "todayHighlight":Z
    :cond_6d
    move v4, v6

    .line 33
    goto :goto_41
.end method
