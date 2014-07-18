.class public Lcom/airbnb/android/adapters/ManageCalendarAdapter;
.super Lcom/airbnb/android/adapters/SquareCalendarAdapter;
.source "ManageCalendarAdapter.java"


# direct methods
.method public constructor <init>(Ljava/util/Calendar;Lcom/airbnb/android/models/SquareMap;)V
    .registers 3
    .param p1, "month"    # Ljava/util/Calendar;
    .param p2, "squares"    # Lcom/airbnb/android/models/SquareMap;

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/adapters/SquareCalendarAdapter;-><init>(Ljava/util/Calendar;Lcom/airbnb/android/models/SquareMap;)V

    .line 11
    return-void
.end method


# virtual methods
.method public setFuxMode(I)V
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/ManageCalendarAdapter;->getItem(I)Lcom/airbnb/android/models/CalendarSquare;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/CalendarSquare;->toggleAvailability()Z

    .line 15
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/ManageCalendarAdapter;->notifyDataSetInvalidated()V

    .line 16
    return-void
.end method
