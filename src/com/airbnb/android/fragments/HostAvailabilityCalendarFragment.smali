.class public Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "HostAvailabilityCalendarFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$HostAvailabilityCalendarAdapter;,
        Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$CalendarHolder;
    }
.end annotation


# static fields
.field private static final KEY_MAP:Ljava/lang/String; = "map"


# instance fields
.field mCalendarHolder:Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$CalendarHolder;

.field private mMap:Lcom/airbnb/android/models/SquareMap;

.field private mMonthFormat:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 124
    return-void
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;->onPreviousMonthClick()V

    return-void
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;->onNextMonthClick()V

    return-void
.end method

.method public static newInstance(Lcom/airbnb/android/models/SquareMap;)Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;
    .registers 4
    .param p0, "map"    # Lcom/airbnb/android/models/SquareMap;

    .prologue
    .line 45
    new-instance v1, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;-><init>()V

    .line 46
    .local v1, "fragment":Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 47
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "map"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 48
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;->setArguments(Landroid/os/Bundle;)V

    .line 49
    return-object v1
.end method

.method private onNextMonthClick()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 109
    iget-object v3, p0, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$CalendarHolder;

    iget-object v3, v3, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$CalendarHolder;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$HostAvailabilityCalendarAdapter;

    .line 110
    .local v0, "adapter":Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$HostAvailabilityCalendarAdapter;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 111
    .local v2, "yearFromNow":Ljava/util/Calendar;
    invoke-virtual {v2, v4, v4}, Ljava/util/Calendar;->add(II)V

    .line 112
    invoke-virtual {v0}, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$HostAvailabilityCalendarAdapter;->getNextMonth()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    .line 113
    .local v1, "nextMonth":Ljava/util/Calendar;
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_26

    .line 114
    invoke-direct {p0, v1}, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;->updateMonth(Ljava/util/Calendar;)V

    .line 116
    :cond_26
    return-void
.end method

.method private onPreviousMonthClick()V
    .registers 3

    .prologue
    .line 104
    iget-object v1, p0, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$CalendarHolder;

    iget-object v1, v1, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$CalendarHolder;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$HostAvailabilityCalendarAdapter;

    .line 105
    .local v0, "adapter":Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$HostAvailabilityCalendarAdapter;
    invoke-virtual {v0}, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$HostAvailabilityCalendarAdapter;->getPreviousMonth()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    invoke-direct {p0, v1}, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;->updateMonth(Ljava/util/Calendar;)V

    .line 106
    return-void
.end method

.method private updateMonth(Ljava/util/Calendar;)V
    .registers 6
    .param p1, "newMonth"    # Ljava/util/Calendar;

    .prologue
    .line 119
    iget-object v1, p0, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;->mMonthFormat:Ljava/text/DateFormat;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "monthName":Ljava/lang/String;
    iget-object v1, p0, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$CalendarHolder;

    iget-object v1, v1, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$CalendarHolder;->mMonth:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v1, p0, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$CalendarHolder;

    iget-object v1, v1, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$CalendarHolder;->mGrid:Landroid/widget/GridView;

    new-instance v2, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$HostAvailabilityCalendarAdapter;

    iget-object v3, p0, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;->mMap:Lcom/airbnb/android/models/SquareMap;

    invoke-direct {v2, p1, v3}, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$HostAvailabilityCalendarAdapter;-><init>(Ljava/util/Calendar;Lcom/airbnb/android/models/SquareMap;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 122
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const-string/jumbo v0, "HostAvailabilityCalendarFragment"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_7
    iget-object v0, p0, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v1, "HostAvailabilityCalendarFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_30

    .line 54
    :goto_10
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    new-instance v0, Ljava/text/SimpleDateFormat;

    const v1, 0x7f0e052b

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;->mMonthFormat:Ljava/text/DateFormat;

    .line 58
    new-instance v0, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$CalendarHolder;

    invoke-direct {v0, v3}, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$CalendarHolder;-><init>(Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$1;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$CalendarHolder;

    .line 59
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_30
    move-exception v0

    const/4 v0, 0x0

    :try_start_32
    const-string/jumbo v1, "HostAvailabilityCalendarFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_39} :catch_30

    goto :goto_10
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03011e

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 65
    .local v2, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$CalendarHolder;

    const v3, 0x7f08006f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v4, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$CalendarHolder;->mMonth:Landroid/widget/TextView;

    .line 66
    iget-object v4, p0, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$CalendarHolder;

    const v3, 0x7f0800b9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, v4, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$CalendarHolder;->mHeaderGrid:Landroid/widget/GridView;

    .line 67
    iget-object v4, p0, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$CalendarHolder;

    const v3, 0x7f0800ba

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, v4, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$CalendarHolder;->mGrid:Landroid/widget/GridView;

    .line 69
    iget-object v4, p0, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$CalendarHolder;

    const v3, 0x7f08006e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v4, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$CalendarHolder;->mPrevButton:Landroid/widget/ImageView;

    .line 70
    iget-object v3, p0, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$CalendarHolder;

    iget-object v3, v3, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$CalendarHolder;->mPrevButton:Landroid/widget/ImageView;

    new-instance v4, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$1;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$1;-><init>(Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v4, p0, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$CalendarHolder;

    const v3, 0x7f080070

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v4, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$CalendarHolder;->mNextButton:Landroid/widget/ImageView;

    .line 79
    iget-object v3, p0, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$CalendarHolder;

    iget-object v3, v3, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$CalendarHolder;->mNextButton:Landroid/widget/ImageView;

    new-instance v4, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$2;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$2;-><init>(Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v3, p0, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;->mMonthFormat:Ljava/text/DateFormat;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "monthName":Ljava/lang/String;
    iget-object v3, p0, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$CalendarHolder;

    iget-object v3, v3, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$CalendarHolder;->mMonth:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v3, p0, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$CalendarHolder;

    iget-object v3, v3, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$CalendarHolder;->mHeaderGrid:Landroid/widget/GridView;

    new-instance v4, Lcom/airbnb/android/adapters/CalendarHeaderAdapter;

    invoke-direct {v4}, Lcom/airbnb/android/adapters/CalendarHeaderAdapter;-><init>()V

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 91
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "map"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/models/SquareMap;

    iput-object v3, p0, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;->mMap:Lcom/airbnb/android/models/SquareMap;

    .line 93
    iget-object v3, p0, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$CalendarHolder;

    iget-object v3, v3, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$CalendarHolder;->mGrid:Landroid/widget/GridView;

    new-instance v4, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$HostAvailabilityCalendarAdapter;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    iget-object v6, p0, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;->mMap:Lcom/airbnb/android/models/SquareMap;

    invoke-direct {v4, v5, v6}, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$HostAvailabilityCalendarAdapter;-><init>(Ljava/util/Calendar;Lcom/airbnb/android/models/SquareMap;)V

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 100
    .local v0, "dialog":Landroid/app/AlertDialog;
    return-object v0
.end method

.method protected onStart()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    return-void
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStop()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    return-void
.end method
