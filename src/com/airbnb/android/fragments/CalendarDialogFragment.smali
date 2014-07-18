.class public Lcom/airbnb/android/fragments/CalendarDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "CalendarDialogFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;
    }
.end annotation


# static fields
.field private static final DIALOG_ERROR:Ljava/lang/String; = "dialog_error"

.field public static final END_TIME:Ljava/lang/String; = "end_time"

.field public static final EXTRA_DURATION:Ljava/lang/String; = "duration"

.field public static final EXTRA_FROM_SEARCH_FILTER:Ljava/lang/String; = "from_search_filter"

.field public static final EXTRA_IS_BOOKING:Ljava/lang/String; = "is_booking"

.field public static final EXTRA_SEARCH_ACTION:Ljava/lang/String; = "search_action"

.field private static final LISTING_ID:Ljava/lang/String; = "listing_id"

.field private static final LOADING_OVERLAY_DELAY_MS:I = 0x32

.field private static final MIN_NIGHT_STAY:Ljava/lang/String; = "min_night_stay"

.field public static final REQUEST_CODE_CALENDAR:I = 0x65

.field private static final REQUEST_CODE_ERROR:I = 0x66

.field public static final START_TIME:Ljava/lang/String; = "start_time"

.field private static final TAG:Ljava/lang/String;

.field private static final TOP_OFFSET:Ljava/lang/String; = "top_offset"


# instance fields
.field mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

.field private mEndTime:J

.field private mFirstUnavailableTime:J

.field private mFromSearchFilter:Z

.field private mIsBookingDetailCalendar:Z

.field private mListingId:J

.field private mLoadingOverlay:Lcom/airbnb/android/views/LoaderFrame;

.field private mMinimumNightStay:I

.field private mMonthFormat:Ljava/text/DateFormat;

.field private mSearchAction:Ljava/lang/String;

.field private mStartTime:J

.field private mUnavailableDates:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const-class v0, Lcom/airbnb/android/fragments/CalendarDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 93
    return-void
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/CalendarDialogFragment;)Lcom/airbnb/android/views/LoaderFrame;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/CalendarDialogFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mLoadingOverlay:Lcom/airbnb/android/views/LoaderFrame;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/airbnb/android/fragments/CalendarDialogFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/CalendarDialogFragment;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->validDurationInterval()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/airbnb/android/fragments/CalendarDialogFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/CalendarDialogFragment;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->showMinimumNightStayError()V

    return-void
.end method

.method static synthetic access$1200(Lcom/airbnb/android/fragments/CalendarDialogFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/CalendarDialogFragment;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->onPreviousMonthClick()V

    return-void
.end method

.method static synthetic access$1300(Lcom/airbnb/android/fragments/CalendarDialogFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/CalendarDialogFragment;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->onNextMonthClick()V

    return-void
.end method

.method static synthetic access$1400(Lcom/airbnb/android/fragments/CalendarDialogFragment;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/CalendarDialogFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->displayLoaderFrame(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/airbnb/android/fragments/CalendarDialogFragment;)Ljava/util/HashSet;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/CalendarDialogFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mUnavailableDates:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/airbnb/android/fragments/CalendarDialogFragment;Ljava/util/HashSet;)Ljava/util/HashSet;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/CalendarDialogFragment;
    .param p1, "x1"    # Ljava/util/HashSet;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mUnavailableDates:Ljava/util/HashSet;

    return-object p1
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/CalendarDialogFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/CalendarDialogFragment;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mIsBookingDetailCalendar:Z

    return v0
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/CalendarDialogFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/CalendarDialogFragment;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->setStayDuration()V

    return-void
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/CalendarDialogFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/CalendarDialogFragment;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->removeFirstUnavailableDate()V

    return-void
.end method

.method static synthetic access$500(Lcom/airbnb/android/fragments/CalendarDialogFragment;Lcom/airbnb/android/adapters/BaseCalendarAdapter;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/CalendarDialogFragment;
    .param p1, "x1"    # Lcom/airbnb/android/adapters/BaseCalendarAdapter;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->markMinimumStayDates(Lcom/airbnb/android/adapters/BaseCalendarAdapter;)V

    return-void
.end method

.method static synthetic access$600(Lcom/airbnb/android/fragments/CalendarDialogFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/CalendarDialogFragment;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->reinsertFirstUnavailableDate()V

    return-void
.end method

.method static synthetic access$700(Lcom/airbnb/android/fragments/CalendarDialogFragment;Lcom/airbnb/android/adapters/BaseCalendarAdapter;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/CalendarDialogFragment;
    .param p1, "x1"    # Lcom/airbnb/android/adapters/BaseCalendarAdapter;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->unMarkMinimumStayDates(Lcom/airbnb/android/adapters/BaseCalendarAdapter;)V

    return-void
.end method

.method static synthetic access$800(Lcom/airbnb/android/fragments/CalendarDialogFragment;)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/CalendarDialogFragment;

    .prologue
    .line 54
    iget v0, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mMinimumNightStay:I

    return v0
.end method

.method static synthetic access$900(Lcom/airbnb/android/fragments/CalendarDialogFragment;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/CalendarDialogFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->showSubtitle(Z)V

    return-void
.end method

.method private displayLoaderFrame(Z)V
    .registers 4
    .param p1, "show"    # Z

    .prologue
    .line 526
    iget-object v0, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mLoadingOverlay:Lcom/airbnb/android/views/LoaderFrame;

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderFrame;->invalidate()V

    .line 527
    iget-object v1, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mLoadingOverlay:Lcom/airbnb/android/views/LoaderFrame;

    if-eqz p1, :cond_15

    const/4 v0, 0x0

    :goto_a
    invoke-virtual {v1, v0}, Lcom/airbnb/android/views/LoaderFrame;->setVisibility(I)V

    .line 528
    if-nez p1, :cond_18

    .line 529
    iget-object v0, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mLoadingOverlay:Lcom/airbnb/android/views/LoaderFrame;

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderFrame;->finish()V

    .line 533
    :goto_14
    return-void

    .line 527
    :cond_15
    const/16 v0, 0x8

    goto :goto_a

    .line 531
    :cond_18
    iget-object v0, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mLoadingOverlay:Lcom/airbnb/android/views/LoaderFrame;

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderFrame;->startAnimation()V

    goto :goto_14
.end method

.method private fetchUnavailableDates(Z)V
    .registers 6
    .param p1, "showCalendar"    # Z

    .prologue
    .line 482
    if-eqz p1, :cond_6

    .line 483
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->displayLoaderFrame(Z)V

    .line 486
    :cond_6
    new-instance v0, Lcom/airbnb/android/requests/GetUnavailabilitiesRequest;

    iget-wide v1, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mListingId:J

    new-instance v3, Lcom/airbnb/android/fragments/CalendarDialogFragment$6;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/CalendarDialogFragment$6;-><init>(Lcom/airbnb/android/fragments/CalendarDialogFragment;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/requests/GetUnavailabilitiesRequest;-><init>(JLcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v0}, Lcom/airbnb/android/requests/GetUnavailabilitiesRequest;->execute()V

    .line 523
    return-void
.end method

.method private markMinimumStayDates(Lcom/airbnb/android/adapters/BaseCalendarAdapter;)V
    .registers 5
    .param p1, "adapter"    # Lcom/airbnb/android/adapters/BaseCalendarAdapter;

    .prologue
    .line 375
    iget v1, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mMinimumNightStay:I

    if-lez v1, :cond_19

    .line 377
    invoke-virtual {p1}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->getStartTime()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 378
    .local v0, "lastMinimumNightStayDate":Ljava/util/Calendar;
    const/4 v1, 0x6

    iget v2, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mMinimumNightStay:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 379
    check-cast p1, Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;

    .end local p1    # "adapter":Lcom/airbnb/android/adapters/BaseCalendarAdapter;
    invoke-virtual {p1, v0}, Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;->setMinimumNightsEndDate(Ljava/util/Calendar;)V

    .line 381
    .end local v0    # "lastMinimumNightStayDate":Ljava/util/Calendar;
    :cond_19
    return-void
.end method

.method public static newInstance(IJJZLjava/lang/String;)Lcom/airbnb/android/fragments/CalendarDialogFragment;
    .registers 10
    .param p0, "topOffset"    # I
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J
    .param p5, "fromSearchFilter"    # Z
    .param p6, "searchAction"    # Ljava/lang/String;

    .prologue
    .line 107
    new-instance v1, Lcom/airbnb/android/fragments/CalendarDialogFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/CalendarDialogFragment;-><init>()V

    .line 108
    .local v1, "fragment":Lcom/airbnb/android/fragments/CalendarDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 109
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "top_offset"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    const-string/jumbo v2, "start_time"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 111
    const-string/jumbo v2, "end_time"

    invoke-virtual {v0, v2, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 112
    const-string/jumbo v2, "from_search_filter"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 113
    const-string/jumbo v2, "search_action"

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 116
    return-object v1
.end method

.method public static newInstanceForListing(IJJIJ)Lcom/airbnb/android/fragments/CalendarDialogFragment;
    .registers 19
    .param p0, "topOffset"    # I
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J
    .param p5, "minimumNights"    # I
    .param p6, "listingId"    # J

    .prologue
    .line 120
    const/4 v7, 0x0

    const/4 v8, 0x0

    move v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-static/range {v2 .. v8}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->newInstance(IJJZLjava/lang/String;)Lcom/airbnb/android/fragments/CalendarDialogFragment;

    move-result-object v10

    .line 121
    .local v10, "fragment":Lcom/airbnb/android/fragments/CalendarDialogFragment;
    invoke-virtual {v10}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    .line 122
    .local v9, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "min_night_stay"

    move/from16 v0, p5

    invoke-virtual {v9, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 123
    const-string/jumbo v2, "listing_id"

    move-wide/from16 v0, p6

    invoke-virtual {v9, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 125
    invoke-virtual {v10, v9}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 126
    return-object v10
.end method

.method private onNextMonthClick()V
    .registers 3

    .prologue
    .line 437
    iget-object v1, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    iget-object v1, v1, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;

    .line 438
    .local v0, "adapter":Lcom/airbnb/android/adapters/BaseCalendarAdapter;
    invoke-virtual {v0}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->getNextMonth()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    invoke-direct {p0, v1}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->updateMonth(Ljava/util/Calendar;)V

    .line 439
    return-void
.end method

.method private onPreviousMonthClick()V
    .registers 3

    .prologue
    .line 432
    iget-object v1, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    iget-object v1, v1, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;

    .line 433
    .local v0, "adapter":Lcom/airbnb/android/adapters/BaseCalendarAdapter;
    invoke-virtual {v0}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->getPreviousMonth()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    invoke-direct {p0, v1}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->updateMonth(Ljava/util/Calendar;)V

    .line 434
    return-void
.end method

.method private reinsertFirstUnavailableDate()V
    .registers 6

    .prologue
    const-wide/16 v3, -0x1

    .line 613
    iget-wide v0, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mFirstUnavailableTime:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_15

    .line 614
    iget-object v0, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mUnavailableDates:Ljava/util/HashSet;

    iget-wide v1, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mFirstUnavailableTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 615
    iput-wide v3, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mFirstUnavailableTime:J

    .line 617
    :cond_15
    return-void
.end method

.method private removeFirstUnavailableDate()V
    .registers 11

    .prologue
    .line 591
    iget-wide v6, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mFirstUnavailableTime:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_c

    iget-object v6, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mUnavailableDates:Ljava/util/HashSet;

    if-nez v6, :cond_d

    .line 610
    :cond_c
    :goto_c
    return-void

    .line 595
    :cond_d
    new-instance v4, Ljava/util/TreeSet;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 596
    .local v4, "treeSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Long;>;"
    iget-object v6, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mUnavailableDates:Ljava/util/HashSet;

    invoke-virtual {v4, v6}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 598
    iget-object v6, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    iget-object v6, v6, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v6}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;

    .line 599
    .local v0, "adapter":Lcom/airbnb/android/adapters/BaseCalendarAdapter;
    invoke-virtual {v0}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->getStartTime()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 601
    .local v2, "startTime":J
    invoke-virtual {v4}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 602
    .local v5, "unavailableDate":Ljava/lang/Long;
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-lez v6, :cond_4c

    .line 603
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mFirstUnavailableTime:J

    goto :goto_31

    .line 609
    .end local v5    # "unavailableDate":Ljava/lang/Long;
    :cond_4c
    iget-object v6, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mUnavailableDates:Ljava/util/HashSet;

    iget-wide v7, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mFirstUnavailableTime:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_c
.end method

.method private setStayDuration()V
    .registers 11

    .prologue
    const-wide/16 v5, -0x1

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 459
    iget-object v3, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    iget-object v3, v3, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;

    .line 460
    .local v0, "adapter":Lcom/airbnb/android/adapters/BaseCalendarAdapter;
    invoke-virtual {v0}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->getSelectionDuration()I

    move-result v2

    .line 461
    .local v2, "duration":I
    invoke-virtual {v0}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->getStartTime()Ljava/util/Calendar;

    move-result-object v3

    if-eqz v3, :cond_55

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->getStartTime()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    :goto_20
    iput-wide v3, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mStartTime:J

    .line 462
    invoke-virtual {v0}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->getEndTime()Ljava/util/Calendar;

    move-result-object v3

    if-eqz v3, :cond_30

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->getEndTime()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    :cond_30
    iput-wide v5, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mEndTime:J

    .line 464
    iget-boolean v3, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mIsBookingDetailCalendar:Z

    if-eqz v3, :cond_57

    .line 465
    iget-object v3, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    iget-object v3, v3, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d003a

    iget v6, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mMinimumNightStay:I

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mMinimumNightStay:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    :goto_54
    return-void

    :cond_55
    move-wide v3, v5

    .line 461
    goto :goto_20

    .line 467
    :cond_57
    const-string/jumbo v1, ""

    .line 469
    .local v1, "dates":Ljava/lang/String;
    iget-object v3, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    iget-object v3, v3, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/adapters/SearchCalendarAdapter;

    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/airbnb/android/adapters/SearchCalendarAdapter;->getDates(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 471
    if-lez v2, :cond_a1

    .line 472
    iget-object v3, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    iget-object v3, v3, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mDuration:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0039

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v2, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_54

    .line 473
    :cond_a1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_af

    .line 474
    iget-object v3, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    iget-object v3, v3, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mDuration:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_54

    .line 476
    :cond_af
    iget-object v3, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    iget-object v3, v3, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mDuration:Landroid/widget/TextView;

    const v4, 0x7f0e0545

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_54
.end method

.method private showMinimumNightStayError()V
    .registers 11

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x1

    .line 563
    invoke-direct {p0, v7}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->showSubtitle(Z)V

    .line 565
    iget-object v4, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    iget-object v4, v4, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a002b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 567
    iget-object v4, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    iget-object v4, v4, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;

    .line 568
    .local v0, "adapter":Lcom/airbnb/android/adapters/BaseCalendarAdapter;
    invoke-virtual {v0}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->getStartTime()Ljava/util/Calendar;

    move-result-object v4

    invoke-static {v4}, Lcom/airbnb/android/utils/CalendarHelper;->roundDateToMidnight(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    .line 569
    .local v2, "start":Ljava/util/Calendar;
    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    .line 570
    .local v1, "end":Ljava/util/Calendar;
    iget v4, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mMinimumNightStay:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v8, v4}, Ljava/util/Calendar;->add(II)V

    .line 572
    :goto_36
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 573
    iget-object v4, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mUnavailableDates:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 574
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d003b

    iget v6, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mMinimumNightStay:I

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mMinimumNightStay:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 575
    .local v3, "text":Ljava/lang/String;
    iget-object v4, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    iget-object v4, v4, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    .end local v3    # "text":Ljava/lang/String;
    :cond_6b
    return-void

    .line 578
    :cond_6c
    invoke-virtual {v2, v8, v7}, Ljava/util/Calendar;->add(II)V

    goto :goto_36
.end method

.method private showSubtitle(Z)V
    .registers 4
    .param p1, "show"    # Z

    .prologue
    .line 583
    if-eqz p1, :cond_f

    iget-boolean v0, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mIsBookingDetailCalendar:Z

    if-eqz v0, :cond_f

    .line 584
    iget-object v0, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    iget-object v0, v0, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mSubtitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 588
    :goto_e
    return-void

    .line 586
    :cond_f
    iget-object v0, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    iget-object v0, v0, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mSubtitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_e
.end method

.method private unMarkMinimumStayDates(Lcom/airbnb/android/adapters/BaseCalendarAdapter;)V
    .registers 3
    .param p1, "adapter"    # Lcom/airbnb/android/adapters/BaseCalendarAdapter;

    .prologue
    .line 384
    check-cast p1, Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;

    .end local p1    # "adapter":Lcom/airbnb/android/adapters/BaseCalendarAdapter;
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;->setMinimumNightsEndDate(Ljava/util/Calendar;)V

    .line 385
    return-void
.end method

.method private updateMonth(Ljava/util/Calendar;)V
    .registers 9
    .param p1, "newMonth"    # Ljava/util/Calendar;

    .prologue
    .line 442
    iget-object v3, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mMonthFormat:Ljava/text/DateFormat;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 443
    .local v2, "monthName":Ljava/lang/String;
    iget-object v3, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    iget-object v3, v3, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mMonth:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    iget-object v3, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    iget-object v3, v3, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;

    .line 447
    .local v0, "adapter":Lcom/airbnb/android/adapters/BaseCalendarAdapter;
    iget-boolean v3, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mIsBookingDetailCalendar:Z

    if-eqz v3, :cond_3e

    .line 448
    new-instance v1, Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->getStartTime()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->getEndTime()Ljava/util/Calendar;

    move-result-object v4

    iget v5, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mMinimumNightStay:I

    invoke-direct {v1, p1, v3, v4, v5}, Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;-><init>(Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;I)V

    .line 449
    .local v1, "bookingAdapter":Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;
    iget-object v3, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    iget-object v3, v3, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v3, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 450
    iget-object v3, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mUnavailableDates:Ljava/util/HashSet;

    invoke-virtual {v1, v3}, Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;->setUnavailableDates(Ljava/util/HashSet;)V

    .line 451
    invoke-virtual {v1}, Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;->notifyDataSetChanged()V

    .line 456
    .end local v1    # "bookingAdapter":Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;
    :goto_3d
    return-void

    .line 453
    :cond_3e
    iget-object v3, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    iget-object v3, v3, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mGrid:Landroid/widget/GridView;

    new-instance v4, Lcom/airbnb/android/adapters/SearchCalendarAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->getStartTime()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->getEndTime()Ljava/util/Calendar;

    move-result-object v6

    invoke-direct {v4, p1, v5, v6}, Lcom/airbnb/android/adapters/SearchCalendarAdapter;-><init>(Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;)V

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_3d
.end method

.method private validDurationInterval()Z
    .registers 10

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 539
    iget-object v5, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    iget-object v5, v5, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v5}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;

    .line 541
    .local v0, "adapter":Lcom/airbnb/android/adapters/BaseCalendarAdapter;
    invoke-virtual {v0}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->getStartTime()Ljava/util/Calendar;

    move-result-object v5

    if-eqz v5, :cond_18

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->getEndTime()Ljava/util/Calendar;

    move-result-object v5

    if-nez v5, :cond_19

    .line 559
    :cond_18
    :goto_18
    return v3

    .line 545
    :cond_19
    invoke-virtual {v0}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->getSelectionDuration()I

    move-result v5

    iget v6, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mMinimumNightStay:I

    if-lt v5, v6, :cond_18

    .line 549
    invoke-virtual {v0}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->getStartTime()Ljava/util/Calendar;

    move-result-object v5

    invoke-static {v5}, Lcom/airbnb/android/utils/CalendarHelper;->roundDateToMidnight(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    .line 550
    .local v2, "start":Ljava/util/Calendar;
    invoke-virtual {v0}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->getEndTime()Ljava/util/Calendar;

    move-result-object v5

    invoke-static {v5}, Lcom/airbnb/android/utils/CalendarHelper;->roundDateToMidnight(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    .line 552
    .local v1, "end":Ljava/util/Calendar;
    :goto_31
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 553
    iget-object v5, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mUnavailableDates:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mFirstUnavailableTime:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_18

    .line 556
    const/4 v5, 0x5

    invoke-virtual {v2, v5, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_31

    :cond_56
    move v3, v4

    .line 559
    goto :goto_18
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 424
    const/16 v0, 0x66

    if-ne p1, v0, :cond_7

    .line 425
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->dismiss()V

    .line 428
    :cond_7
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/DialogFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 429
    return-void
.end method

.method protected onApplyOrSkipClick(Z)V
    .registers 11
    .param p1, "isApply"    # Z

    .prologue
    const/16 v8, 0x65

    const/4 v7, -0x1

    .line 388
    iget-object v4, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    iget-object v4, v4, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/adapters/SearchCalendarAdapter;

    .line 389
    .local v0, "adapter":Lcom/airbnb/android/adapters/SearchCalendarAdapter;
    invoke-virtual {v0}, Lcom/airbnb/android/adapters/SearchCalendarAdapter;->getStartTime()Ljava/util/Calendar;

    move-result-object v3

    .line 390
    .local v3, "startTime":Ljava/util/Calendar;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 391
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "is_booking"

    iget-boolean v5, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mIsBookingDetailCalendar:Z

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 392
    const-string/jumbo v4, "from_search_filter"

    iget-boolean v5, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mFromSearchFilter:Z

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 393
    const-string/jumbo v4, "search_action"

    iget-object v5, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mSearchAction:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    if-eqz p1, :cond_77

    if-eqz v3, :cond_77

    .line 395
    invoke-virtual {v0}, Lcom/airbnb/android/adapters/SearchCalendarAdapter;->getEndTime()Ljava/util/Calendar;

    move-result-object v1

    .line 396
    .local v1, "endTime":Ljava/util/Calendar;
    if-nez v1, :cond_46

    .line 398
    invoke-virtual {v3}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "endTime":Ljava/util/Calendar;
    check-cast v1, Ljava/util/Calendar;

    .line 399
    .restart local v1    # "endTime":Ljava/util/Calendar;
    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 400
    invoke-virtual {v0, v1}, Lcom/airbnb/android/adapters/SearchCalendarAdapter;->setEndTime(Ljava/util/Calendar;)V

    .line 403
    :cond_46
    const-string/jumbo v4, "start_time"

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/SearchCalendarAdapter;->getStartTime()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 404
    const-string/jumbo v4, "end_time"

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/SearchCalendarAdapter;->getEndTime()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 405
    const-string/jumbo v4, "duration"

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/SearchCalendarAdapter;->getSelectionDuration()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 406
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v4

    invoke-virtual {v4, v8, v7, v2}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 411
    .end local v1    # "endTime":Ljava/util/Calendar;
    :goto_73
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->dismiss()V

    .line 412
    return-void

    .line 408
    :cond_77
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v4

    invoke-virtual {v4, v8, v7, v2}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_73
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    const-wide/16 v6, -0x1

    const-string/jumbo v2, "CalendarDialogFragment"

    invoke-static {v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_a
    iget-object v2, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v3, "CalendarDialogFragment#onCreate"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_13} :catch_88

    .line 131
    :goto_13
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 133
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 134
    .local v0, "args":Landroid/os/Bundle;
    if-nez p1, :cond_92

    .line 135
    const-string/jumbo v2, "start_time"

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mStartTime:J

    .line 136
    const-string/jumbo v2, "end_time"

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mEndTime:J

    .line 142
    :goto_2e
    const-string/jumbo v2, "min_night_stay"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mMinimumNightStay:I

    .line 143
    const-string/jumbo v2, "from_search_filter"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mFromSearchFilter:Z

    .line 144
    const-string/jumbo v2, "search_action"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mSearchAction:Ljava/lang/String;

    .line 145
    const-string/jumbo v2, "listing_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mListingId:J

    .line 146
    iget-wide v2, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mListingId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_5e

    iget v2, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mMinimumNightStay:I

    if-lez v2, :cond_5f

    :cond_5e
    const/4 v1, 0x1

    :cond_5f
    iput-boolean v1, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mIsBookingDetailCalendar:Z

    .line 148
    iget-boolean v1, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mIsBookingDetailCalendar:Z

    if-eqz v1, :cond_6b

    .line 149
    iput-wide v6, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mStartTime:J

    .line 150
    iput-wide v6, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mEndTime:J

    .line 151
    iput-wide v6, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mFirstUnavailableTime:J

    .line 154
    :cond_6b
    new-instance v1, Ljava/text/SimpleDateFormat;

    const v2, 0x7f0e052b

    invoke-virtual {p0, v2}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mMonthFormat:Ljava/text/DateFormat;

    .line 156
    new-instance v1, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    invoke-direct {v1, v8}, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;-><init>(Lcom/airbnb/android/fragments/CalendarDialogFragment$1;)V

    iput-object v1, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    .line 157
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    .end local v0    # "args":Landroid/os/Bundle;
    :catch_88
    move-exception v2

    const/4 v2, 0x0

    :try_start_8a
    const-string/jumbo v3, "CalendarDialogFragment#onCreate"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_91
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8a .. :try_end_91} :catch_88

    goto :goto_13

    .line 138
    .restart local v0    # "args":Landroid/os/Bundle;
    :cond_92
    const-string/jumbo v2, "start_time"

    invoke-virtual {p1, v2, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mStartTime:J

    .line 139
    const-string/jumbo v2, "end_time"

    invoke-virtual {p1, v2, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mEndTime:J

    goto :goto_2e
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f030041

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 162
    .local v8, "view":Landroid/view/View;
    invoke-static {p0, v8}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 164
    const v9, 0x7f080026

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/airbnb/android/views/LoaderFrame;

    iput-object v9, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mLoadingOverlay:Lcom/airbnb/android/views/LoaderFrame;

    .line 165
    iget-object v9, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mLoadingOverlay:Lcom/airbnb/android/views/LoaderFrame;

    new-instance v10, Lcom/airbnb/android/fragments/CalendarDialogFragment$1;

    invoke-direct {v10, p0}, Lcom/airbnb/android/fragments/CalendarDialogFragment$1;-><init>(Lcom/airbnb/android/fragments/CalendarDialogFragment;)V

    const-wide/16 v11, 0x32

    invoke-virtual {v9, v10, v11, v12}, Lcom/airbnb/android/views/LoaderFrame;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 175
    iget-object v10, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    const v9, 0x7f0800b7

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v10, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mTitle:Landroid/widget/TextView;

    .line 176
    iget-object v10, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    const v9, 0x7f0800b8

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v10, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mSubtitle:Landroid/widget/TextView;

    .line 177
    iget-object v10, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    const v9, 0x7f08006f

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v10, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mMonth:Landroid/widget/TextView;

    .line 178
    iget-object v10, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    const v9, 0x7f0800b9

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/GridView;

    iput-object v9, v10, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mHeaderGrid:Landroid/widget/GridView;

    .line 179
    iget-object v10, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    const v9, 0x7f0800ba

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/GridView;

    iput-object v9, v10, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mGrid:Landroid/widget/GridView;

    .line 180
    iget-object v10, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    const v9, 0x7f08006b

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v10, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mDuration:Landroid/widget/TextView;

    .line 185
    iget-boolean v6, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mFromSearchFilter:Z

    .line 187
    .local v6, "noStickyButton":Z
    iget-object v9, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    iget-object v9, v9, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mGrid:Landroid/widget/GridView;

    new-instance v10, Lcom/airbnb/android/fragments/CalendarDialogFragment$2;

    invoke-direct {v10, p0, v6}, Lcom/airbnb/android/fragments/CalendarDialogFragment$2;-><init>(Lcom/airbnb/android/fragments/CalendarDialogFragment;Z)V

    invoke-virtual {v9, v10}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 281
    iget-object v10, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    const v9, 0x7f08006e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v10, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mPrevButton:Landroid/widget/ImageView;

    .line 282
    iget-object v9, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    iget-object v9, v9, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mPrevButton:Landroid/widget/ImageView;

    new-instance v10, Lcom/airbnb/android/fragments/CalendarDialogFragment$3;

    invoke-direct {v10, p0}, Lcom/airbnb/android/fragments/CalendarDialogFragment$3;-><init>(Lcom/airbnb/android/fragments/CalendarDialogFragment;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object v10, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    const v9, 0x7f080070

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v10, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mNextButton:Landroid/widget/ImageView;

    .line 291
    iget-object v9, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    iget-object v9, v9, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mNextButton:Landroid/widget/ImageView;

    new-instance v10, Lcom/airbnb/android/fragments/CalendarDialogFragment$4;

    invoke-direct {v10, p0}, Lcom/airbnb/android/fragments/CalendarDialogFragment$4;-><init>(Lcom/airbnb/android/fragments/CalendarDialogFragment;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    iget-wide v9, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mStartTime:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_156

    iget-wide v9, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mEndTime:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_156

    const/4 v3, 0x1

    .line 300
    .local v3, "hasStartAndEndTime":Z
    :goto_c9
    if-eqz v3, :cond_166

    .line 301
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 302
    .local v4, "month":Ljava/util/Calendar;
    iget-wide v9, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mStartTime:J

    invoke-virtual {v4, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 303
    invoke-virtual {v4}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Calendar;

    .line 304
    .local v7, "start":Ljava/util/Calendar;
    invoke-virtual {v4}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    .line 305
    .local v2, "end":Ljava/util/Calendar;
    iget-wide v9, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mEndTime:J

    invoke-virtual {v2, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 307
    iget-object v9, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mMonthFormat:Ljava/text/DateFormat;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 308
    .local v5, "monthName":Ljava/lang/String;
    iget-object v9, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    iget-object v9, v9, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mMonth:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v9, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    iget-object v9, v9, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mHeaderGrid:Landroid/widget/GridView;

    new-instance v10, Lcom/airbnb/android/adapters/CalendarHeaderAdapter;

    invoke-direct {v10}, Lcom/airbnb/android/adapters/CalendarHeaderAdapter;-><init>()V

    invoke-virtual {v9, v10}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 311
    iget-boolean v9, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mIsBookingDetailCalendar:Z

    if-eqz v9, :cond_159

    .line 312
    iget-object v9, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    iget-object v9, v9, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mGrid:Landroid/widget/GridView;

    new-instance v10, Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;

    iget v11, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mMinimumNightStay:I

    invoke-direct {v10, v4, v7, v2, v11}, Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;-><init>(Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;I)V

    invoke-virtual {v9, v10}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 328
    .end local v2    # "end":Ljava/util/Calendar;
    .end local v4    # "month":Ljava/util/Calendar;
    .end local v7    # "start":Ljava/util/Calendar;
    :goto_114
    invoke-direct {p0}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->setStayDuration()V

    .line 330
    if-eqz v6, :cond_1af

    .line 332
    iget-object v9, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    iget-object v9, v9, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mDuration:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 334
    const v9, 0x7f0800bc

    invoke-static {v8, v9}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 335
    .local v0, "btnSkip":Landroid/widget/TextView;
    if-eqz v3, :cond_1a9

    .line 336
    const v9, 0x7f0e06bb

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(I)V

    .line 337
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 338
    new-instance v9, Lcom/airbnb/android/fragments/CalendarDialogFragment$5;

    invoke-direct {v9, p0}, Lcom/airbnb/android/fragments/CalendarDialogFragment$5;-><init>(Lcom/airbnb/android/fragments/CalendarDialogFragment;)V

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    .end local v0    # "btnSkip":Landroid/widget/TextView;
    :cond_13f
    :goto_13f
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 364
    .local v1, "dialog":Landroid/app/AlertDialog;
    return-object v1

    .line 299
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    .end local v3    # "hasStartAndEndTime":Z
    .end local v5    # "monthName":Ljava/lang/String;
    :cond_156
    const/4 v3, 0x0

    goto/16 :goto_c9

    .line 314
    .restart local v2    # "end":Ljava/util/Calendar;
    .restart local v3    # "hasStartAndEndTime":Z
    .restart local v4    # "month":Ljava/util/Calendar;
    .restart local v5    # "monthName":Ljava/lang/String;
    .restart local v7    # "start":Ljava/util/Calendar;
    :cond_159
    iget-object v9, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    iget-object v9, v9, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mGrid:Landroid/widget/GridView;

    new-instance v10, Lcom/airbnb/android/adapters/SearchCalendarAdapter;

    invoke-direct {v10, v4, v7, v2}, Lcom/airbnb/android/adapters/SearchCalendarAdapter;-><init>(Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;)V

    invoke-virtual {v9, v10}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_114

    .line 317
    .end local v2    # "end":Ljava/util/Calendar;
    .end local v4    # "month":Ljava/util/Calendar;
    .end local v5    # "monthName":Ljava/lang/String;
    .end local v7    # "start":Ljava/util/Calendar;
    :cond_166
    iget-object v9, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mMonthFormat:Ljava/text/DateFormat;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 318
    .restart local v5    # "monthName":Ljava/lang/String;
    iget-object v9, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    iget-object v9, v9, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mMonth:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v9, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    iget-object v9, v9, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mHeaderGrid:Landroid/widget/GridView;

    new-instance v10, Lcom/airbnb/android/adapters/CalendarHeaderAdapter;

    invoke-direct {v10}, Lcom/airbnb/android/adapters/CalendarHeaderAdapter;-><init>()V

    invoke-virtual {v9, v10}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 321
    iget-boolean v9, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mIsBookingDetailCalendar:Z

    if-eqz v9, :cond_19b

    .line 322
    iget-object v9, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    iget-object v9, v9, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mGrid:Landroid/widget/GridView;

    new-instance v10, Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;

    iget v11, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mMinimumNightStay:I

    invoke-direct {v10, v11}, Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;-><init>(I)V

    invoke-virtual {v9, v10}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_114

    .line 324
    :cond_19b
    iget-object v9, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    iget-object v9, v9, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mGrid:Landroid/widget/GridView;

    new-instance v10, Lcom/airbnb/android/adapters/SearchCalendarAdapter;

    invoke-direct {v10}, Lcom/airbnb/android/adapters/SearchCalendarAdapter;-><init>()V

    invoke-virtual {v9, v10}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_114

    .line 346
    .restart local v0    # "btnSkip":Landroid/widget/TextView;
    :cond_1a9
    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_13f

    .line 352
    .end local v0    # "btnSkip":Landroid/widget/TextView;
    :cond_1af
    iget-boolean v9, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mIsBookingDetailCalendar:Z

    if-eqz v9, :cond_13f

    .line 353
    iget-object v9, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    iget-object v9, v9, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mDuration:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 354
    iget v9, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mMinimumNightStay:I

    const/4 v10, 0x1

    if-le v9, v10, :cond_1cb

    const/4 v9, 0x1

    :goto_1c2
    invoke-direct {p0, v9}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->showSubtitle(Z)V

    .line 355
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->fetchUnavailableDates(Z)V

    goto/16 :goto_13f

    .line 354
    :cond_1cb
    const/4 v9, 0x0

    goto :goto_1c2
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 369
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 370
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApplication;->getAnalyticsRegistry()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "calendar_type"

    invoke-virtual {v1, v2}, Lcom/airbnb/android/utils/Strap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 371
    .local v0, "calendarType":Ljava/lang/String;
    const-string/jumbo v1, "android_eng"

    const/4 v2, 0x0

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "calendar_action"

    const-string/jumbo v5, "dismiss_calendar"

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "calendar_type"

    invoke-virtual {v3, v4, v0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 372
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 416
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 418
    const-string/jumbo v0, "start_time"

    iget-wide v1, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mStartTime:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 419
    const-string/jumbo v0, "end_time"

    iget-wide v1, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mEndTime:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 420
    return-void
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
