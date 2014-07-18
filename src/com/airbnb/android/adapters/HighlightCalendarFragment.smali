.class public Lcom/airbnb/android/adapters/HighlightCalendarFragment;
.super Lcom/airbnb/android/fragments/SquareCalendarFragment;
.source "HighlightCalendarFragment.java"


# static fields
.field private static final KEY_DATE:Ljava/lang/String; = "date"

.field private static final KEY_RESO:Ljava/lang/String; = "reservation"


# instance fields
.field public mSquaresMap:Lcom/airbnb/android/models/SquareMap;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SquareCalendarFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/airbnb/android/models/SquareMap;)Lcom/airbnb/android/adapters/HighlightCalendarFragment;
    .registers 4
    .param p0, "squares"    # Lcom/airbnb/android/models/SquareMap;

    .prologue
    .line 23
    new-instance v1, Lcom/airbnb/android/adapters/HighlightCalendarFragment;

    invoke-direct {v1}, Lcom/airbnb/android/adapters/HighlightCalendarFragment;-><init>()V

    .line 24
    .local v1, "f":Lcom/airbnb/android/adapters/HighlightCalendarFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 25
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "squares"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 26
    invoke-virtual {v1, v0}, Lcom/airbnb/android/adapters/HighlightCalendarFragment;->setArguments(Landroid/os/Bundle;)V

    .line 27
    return-object v1
.end method

.method public static newInstance(Lcom/airbnb/android/models/SquareMap;Lcom/airbnb/android/interfaces/Reservationable;)Lcom/airbnb/android/adapters/HighlightCalendarFragment;
    .registers 7
    .param p0, "squares"    # Lcom/airbnb/android/models/SquareMap;
    .param p1, "reservation"    # Lcom/airbnb/android/interfaces/Reservationable;

    .prologue
    .line 31
    invoke-static {p0}, Lcom/airbnb/android/adapters/HighlightCalendarFragment;->newInstance(Lcom/airbnb/android/models/SquareMap;)Lcom/airbnb/android/adapters/HighlightCalendarFragment;

    move-result-object v0

    .line 32
    .local v0, "fragment":Lcom/airbnb/android/adapters/HighlightCalendarFragment;
    invoke-virtual {v0}, Lcom/airbnb/android/adapters/HighlightCalendarFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "date"

    invoke-interface {p1}, Lcom/airbnb/android/interfaces/Reservationable;->getCheckinDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 33
    invoke-virtual {v0}, Lcom/airbnb/android/adapters/HighlightCalendarFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "reservation"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 34
    return-object v0
.end method


# virtual methods
.method protected generateAdapter(Ljava/util/Calendar;Lcom/airbnb/android/models/SquareMap;)Lcom/airbnb/android/adapters/SquareCalendarAdapter;
    .registers 6
    .param p1, "month"    # Ljava/util/Calendar;
    .param p2, "squares"    # Lcom/airbnb/android/models/SquareMap;

    .prologue
    .line 49
    new-instance v0, Lcom/airbnb/android/adapters/HighlightedCalendarAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/adapters/HighlightCalendarFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "reservation"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/interfaces/Reservationable;

    invoke-direct {v0, p1, p2, v1}, Lcom/airbnb/android/adapters/HighlightedCalendarAdapter;-><init>(Ljava/util/Calendar;Lcom/airbnb/android/models/SquareMap;Lcom/airbnb/android/interfaces/Reservationable;)V

    .line 50
    .local v0, "adapter":Lcom/airbnb/android/adapters/SquareCalendarAdapter;
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/SquareCalendarFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 40
    .local v1, "view":Landroid/view/View;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 41
    .local v0, "calendar":Ljava/util/Calendar;
    new-instance v2, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/airbnb/android/adapters/HighlightCalendarFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "date"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 42
    invoke-virtual {p0, v0}, Lcom/airbnb/android/adapters/HighlightCalendarFragment;->updateMonth(Ljava/util/Calendar;)V

    .line 43
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/HighlightCalendarFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "reservation"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/interfaces/Reservationable;

    invoke-virtual {p0, v2}, Lcom/airbnb/android/adapters/HighlightCalendarFragment;->updatePendingLegend(Lcom/airbnb/android/interfaces/Reservationable;)V

    .line 44
    return-object v1
.end method
