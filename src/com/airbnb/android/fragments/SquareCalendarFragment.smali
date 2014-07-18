.class public abstract Lcom/airbnb/android/fragments/SquareCalendarFragment;
.super Landroid/support/v4/app/Fragment;
.source "SquareCalendarFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;
    }
.end annotation


# static fields
.field private static final KEY_CURRENT_MONTH:Ljava/lang/String; = "current_month"

.field protected static final KEY_NEXT_MONTH:Ljava/lang/String; = "next_month"

.field public static final KEY_SQUARES:Ljava/lang/String; = "squares"


# instance fields
.field protected mCalendarHolder:Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;

.field private mMonthFormat:Ljava/text/DateFormat;

.field protected mSquares:Lcom/airbnb/android/models/SquareMap;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 154
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/SquareCalendarFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SquareCalendarFragment;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SquareCalendarFragment;->onPreviousMonthClick()V

    return-void
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/SquareCalendarFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SquareCalendarFragment;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SquareCalendarFragment;->onNextMonthClick()V

    return-void
.end method

.method private onNextMonthClick()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 113
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 114
    .local v1, "yearFromNow":Ljava/util/Calendar;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SquareCalendarFragment;->getAdapter()Lcom/airbnb/android/adapters/SquareCalendarAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->getNextMonth()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 115
    .local v0, "nextMonth":Ljava/util/Calendar;
    invoke-virtual {v1, v3, v3}, Ljava/util/Calendar;->add(II)V

    .line 116
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_20

    .line 117
    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/SquareCalendarFragment;->updateMonth(Ljava/util/Calendar;)V

    .line 119
    :cond_20
    return-void
.end method

.method private onPreviousMonthClick()V
    .registers 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SquareCalendarFragment;->getAdapter()Lcom/airbnb/android/adapters/SquareCalendarAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->getPreviousMonth()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/SquareCalendarFragment;->updateMonth(Ljava/util/Calendar;)V

    .line 108
    return-void
.end method


# virtual methods
.method public clearSelectedReservationId()V
    .registers 2

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SquareCalendarFragment;->getAdapter()Lcom/airbnb/android/adapters/SquareCalendarAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->clearSelectedReservationId()V

    .line 127
    return-void
.end method

.method protected abstract generateAdapter(Ljava/util/Calendar;Lcom/airbnb/android/models/SquareMap;)Lcom/airbnb/android/adapters/SquareCalendarAdapter;
.end method

.method protected getAdapter()Lcom/airbnb/android/adapters/SquareCalendarAdapter;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/airbnb/android/fragments/SquareCalendarFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;

    iget-object v0, v0, Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;->mGrid:Lcom/airbnb/android/views/StaticHeightGridView;

    invoke-virtual {v0}, Lcom/airbnb/android/views/StaticHeightGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/adapters/SquareCalendarAdapter;

    return-object v0
.end method

.method public getSpotlightLocation(I)Landroid/graphics/Rect;
    .registers 3
    .param p1, "child"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/airbnb/android/fragments/SquareCalendarFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;

    iget-object v0, v0, Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;->mGrid:Lcom/airbnb/android/views/StaticHeightGridView;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/views/StaticHeightGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/utils/MiscUtils;->getScreenLocation(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    const-string/jumbo v0, "SquareCalendarFragment"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_6
    iget-object v0, p0, Lcom/airbnb/android/fragments/SquareCalendarFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v1, "SquareCalendarFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_f} :catch_33

    .line 39
    :goto_f
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SquareCalendarFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e052b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/SquareCalendarFragment;->mMonthFormat:Ljava/text/DateFormat;

    .line 42
    new-instance v0, Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/fragments/SquareCalendarFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;

    .line 43
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_33
    move-exception v0

    const/4 v0, 0x0

    :try_start_35
    const-string/jumbo v1, "SquareCalendarFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_3c} :catch_33

    goto :goto_f
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10

    .prologue
    const/4 v5, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/airbnb/android/fragments/SquareCalendarFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v3, "SquareCalendarFragment#onCreateView"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_a} :catch_cc

    .line 51
    :goto_a
    const v2, 0x7f03018f

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 52
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1, v5, v5}, Landroid/view/View;->measure(II)V

    .line 54
    const v2, 0x7f0800bb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 56
    iget-object v3, p0, Lcom/airbnb/android/fragments/SquareCalendarFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;

    const v2, 0x7f08006f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;->mMonth:Landroid/widget/TextView;

    .line 57
    iget-object v3, p0, Lcom/airbnb/android/fragments/SquareCalendarFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;

    const v2, 0x7f08006d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;->mPendingLabel:Landroid/widget/TextView;

    .line 58
    iget-object v3, p0, Lcom/airbnb/android/fragments/SquareCalendarFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;

    const v2, 0x7f0800b9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, v3, Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;->mHeaderGrid:Landroid/widget/GridView;

    .line 59
    iget-object v3, p0, Lcom/airbnb/android/fragments/SquareCalendarFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;

    const v2, 0x7f0800ba

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/views/StaticHeightGridView;

    iput-object v2, v3, Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;->mGrid:Lcom/airbnb/android/views/StaticHeightGridView;

    .line 61
    iget-object v3, p0, Lcom/airbnb/android/fragments/SquareCalendarFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;

    const v2, 0x7f08006e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;->mPrevButton:Landroid/widget/ImageView;

    .line 62
    iget-object v2, p0, Lcom/airbnb/android/fragments/SquareCalendarFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;

    iget-object v2, v2, Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;->mPrevButton:Landroid/widget/ImageView;

    new-instance v3, Lcom/airbnb/android/fragments/SquareCalendarFragment$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/SquareCalendarFragment$1;-><init>(Lcom/airbnb/android/fragments/SquareCalendarFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v3, p0, Lcom/airbnb/android/fragments/SquareCalendarFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;

    const v2, 0x7f080070

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;->mNextButton:Landroid/widget/ImageView;

    .line 71
    iget-object v2, p0, Lcom/airbnb/android/fragments/SquareCalendarFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;

    iget-object v2, v2, Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;->mNextButton:Landroid/widget/ImageView;

    new-instance v3, Lcom/airbnb/android/fragments/SquareCalendarFragment$2;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/SquareCalendarFragment$2;-><init>(Lcom/airbnb/android/fragments/SquareCalendarFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SquareCalendarFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "squares"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/SquareMap;

    iput-object v2, p0, Lcom/airbnb/android/fragments/SquareCalendarFragment;->mSquares:Lcom/airbnb/android/models/SquareMap;

    .line 81
    iget-object v2, p0, Lcom/airbnb/android/fragments/SquareCalendarFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;

    iget-object v2, v2, Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;->mHeaderGrid:Landroid/widget/GridView;

    new-instance v3, Lcom/airbnb/android/adapters/CalendarHeaderAdapter;

    invoke-direct {v3}, Lcom/airbnb/android/adapters/CalendarHeaderAdapter;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "c":Ljava/util/Calendar;
    if-eqz p3, :cond_ad

    .line 84
    const-string/jumbo v2, "current_month"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .end local v0    # "c":Ljava/util/Calendar;
    check-cast v0, Ljava/util/Calendar;

    .line 87
    .restart local v0    # "c":Ljava/util/Calendar;
    :cond_ad
    if-nez v0, :cond_c5

    .line 88
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 89
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SquareCalendarFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "next_month"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c5

    .line 90
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 94
    :cond_c5
    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/SquareCalendarFragment;->updateMonth(Ljava/util/Calendar;)V

    .line 95
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v1

    .line 4294967295
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v1    # "view":Landroid/view/View;
    :catch_cc
    move-exception v2

    const/4 v2, 0x0

    :try_start_ce
    const-string/jumbo v3, "SquareCalendarFragment#onCreateView"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_d5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ce .. :try_end_d5} :catch_cc

    goto/16 :goto_a
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 103
    const-string/jumbo v0, "current_month"

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SquareCalendarFragment;->getAdapter()Lcom/airbnb/android/adapters/SquareCalendarAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->getThisMonth()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 104
    return-void
.end method

.method protected onStart()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    return-void
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    return-void
.end method

.method public setSelectedReservation(Lcom/airbnb/android/interfaces/Reservationable;)V
    .registers 3
    .param p1, "reservation"    # Lcom/airbnb/android/interfaces/Reservationable;

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SquareCalendarFragment;->getAdapter()Lcom/airbnb/android/adapters/SquareCalendarAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->setSelectedReservation(Lcom/airbnb/android/interfaces/Reservationable;)V

    .line 123
    return-void
.end method

.method protected updateMonth(Ljava/util/Calendar;)V
    .registers 5
    .param p1, "newMonth"    # Ljava/util/Calendar;

    .prologue
    .line 134
    iget-object v1, p0, Lcom/airbnb/android/fragments/SquareCalendarFragment;->mMonthFormat:Ljava/text/DateFormat;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "monthName":Ljava/lang/String;
    iget-object v1, p0, Lcom/airbnb/android/fragments/SquareCalendarFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;

    iget-object v1, v1, Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;->mMonth:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v1, p0, Lcom/airbnb/android/fragments/SquareCalendarFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;

    iget-object v1, v1, Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;->mGrid:Lcom/airbnb/android/views/StaticHeightGridView;

    iget-object v2, p0, Lcom/airbnb/android/fragments/SquareCalendarFragment;->mSquares:Lcom/airbnb/android/models/SquareMap;

    invoke-virtual {p0, p1, v2}, Lcom/airbnb/android/fragments/SquareCalendarFragment;->generateAdapter(Ljava/util/Calendar;Lcom/airbnb/android/models/SquareMap;)Lcom/airbnb/android/adapters/SquareCalendarAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/StaticHeightGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    return-void
.end method

.method protected updatePendingLegend(Lcom/airbnb/android/interfaces/Reservationable;)V
    .registers 6
    .param p1, "reservation"    # Lcom/airbnb/android/interfaces/Reservationable;

    .prologue
    .line 144
    sget-object v2, Lcom/airbnb/android/models/ReservationStatus;->Pending:Lcom/airbnb/android/models/ReservationStatus;

    invoke-interface {p1}, Lcom/airbnb/android/interfaces/Reservationable;->getStatus()Lcom/airbnb/android/models/ReservationStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/models/ReservationStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 145
    .local v0, "isPending":Z
    if-eqz v0, :cond_17

    const v1, 0x7f0e0729

    .line 146
    .local v1, "labelId":I
    :goto_f
    iget-object v2, p0, Lcom/airbnb/android/fragments/SquareCalendarFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;

    iget-object v2, v2, Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;->mPendingLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 147
    return-void

    .line 145
    .end local v1    # "labelId":I
    :cond_17
    const v1, 0x7f0e0728

    goto :goto_f
.end method
