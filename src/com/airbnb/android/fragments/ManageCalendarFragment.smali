.class public Lcom/airbnb/android/fragments/ManageCalendarFragment;
.super Lcom/airbnb/android/fragments/SquareCalendarFragment;
.source "ManageCalendarFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/ManageCalendarFragment$CalendarUpdate;
    }
.end annotation


# static fields
.field private static final LISTING_ID:Ljava/lang/String; = "listing_id"

.field private static final SAVED_STATE_START_SELECTED_SQUARE:Ljava/lang/String; = "saved_state_start_square;"


# instance fields
.field private mModifiedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/CalendarSquare;",
            ">;"
        }
    .end annotation
.end field

.field private mStartSquare:Lcom/airbnb/android/models/CalendarSquare;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SquareCalendarFragment;-><init>()V

    .line 241
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/ManageCalendarFragment;)Lcom/airbnb/android/models/CalendarSquare;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ManageCalendarFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/airbnb/android/fragments/ManageCalendarFragment;->mStartSquare:Lcom/airbnb/android/models/CalendarSquare;

    return-object v0
.end method

.method static synthetic access$002(Lcom/airbnb/android/fragments/ManageCalendarFragment;Lcom/airbnb/android/models/CalendarSquare;)Lcom/airbnb/android/models/CalendarSquare;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ManageCalendarFragment;
    .param p1, "x1"    # Lcom/airbnb/android/models/CalendarSquare;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/airbnb/android/fragments/ManageCalendarFragment;->mStartSquare:Lcom/airbnb/android/models/CalendarSquare;

    return-object p1
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/ManageCalendarFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ManageCalendarFragment;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ManageCalendarFragment;->save()V

    return-void
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/ManageCalendarFragment;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ManageCalendarFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/airbnb/android/fragments/ManageCalendarFragment;->mModifiedList:Ljava/util/List;

    return-object v0
.end method

.method public static newInstance(Lcom/airbnb/android/models/SquareMap;JZ)Lcom/airbnb/android/fragments/ManageCalendarFragment;
    .registers 7
    .param p0, "squares"    # Lcom/airbnb/android/models/SquareMap;
    .param p1, "listingId"    # J
    .param p3, "nextMonth"    # Z

    .prologue
    .line 54
    new-instance v1, Lcom/airbnb/android/fragments/ManageCalendarFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/ManageCalendarFragment;-><init>()V

    .line 55
    .local v1, "f":Lcom/airbnb/android/fragments/ManageCalendarFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 56
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "squares"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 57
    const-string/jumbo v2, "listing_id"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 58
    const-string/jumbo v2, "next_month"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 59
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/ManageCalendarFragment;->setArguments(Landroid/os/Bundle;)V

    .line 60
    return-object v1
.end method

.method private save()V
    .registers 4

    .prologue
    .line 237
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v2, v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "general_nav"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "calendar"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "save_click"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ManageCalendarFragment;->sendOffUnavailabilities()V

    .line 239
    return-void
.end method


# virtual methods
.method protected generateAdapter(Ljava/util/Calendar;Lcom/airbnb/android/models/SquareMap;)Lcom/airbnb/android/adapters/SquareCalendarAdapter;
    .registers 5
    .param p1, "month"    # Ljava/util/Calendar;
    .param p2, "squares"    # Lcom/airbnb/android/models/SquareMap;

    .prologue
    .line 261
    new-instance v0, Lcom/airbnb/android/adapters/ManageCalendarAdapter;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ManageCalendarFragment;->mSquares:Lcom/airbnb/android/models/SquareMap;

    invoke-direct {v0, p1, v1}, Lcom/airbnb/android/adapters/ManageCalendarAdapter;-><init>(Ljava/util/Calendar;Lcom/airbnb/android/models/SquareMap;)V

    return-object v0
.end method

.method public getSpotlightLocation(I)Landroid/graphics/Rect;
    .registers 3
    .param p1, "child"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/airbnb/android/fragments/ManageCalendarFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;

    iget-object v0, v0, Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;->mGrid:Lcom/airbnb/android/views/StaticHeightGridView;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/views/StaticHeightGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/utils/MiscUtils;->getScreenLocation(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/SquareCalendarFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/fragments/ManageCalendarFragment;->mModifiedList:Ljava/util/List;

    .line 69
    if-eqz p1, :cond_17

    .line 70
    const-string/jumbo v0, "saved_state_start_square;"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/CalendarSquare;

    iput-object v0, p0, Lcom/airbnb/android/fragments/ManageCalendarFragment;->mStartSquare:Lcom/airbnb/android/models/CalendarSquare;

    .line 72
    :cond_17
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/SquareCalendarFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 91
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0800bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 93
    iget-object v2, p0, Lcom/airbnb/android/fragments/ManageCalendarFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;

    const v1, 0x7f08006f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;->mMonth:Landroid/widget/TextView;

    .line 94
    iget-object v2, p0, Lcom/airbnb/android/fragments/ManageCalendarFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;

    const v1, 0x7f0800ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/StaticHeightGridView;

    iput-object v1, v2, Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;->mGrid:Lcom/airbnb/android/views/StaticHeightGridView;

    .line 95
    sget-object v1, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v1, p0}, Lcom/airbnb/android/events/AirbnbBus;->register(Ljava/lang/Object;)V

    .line 97
    iget-object v1, p0, Lcom/airbnb/android/fragments/ManageCalendarFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;

    iget-object v1, v1, Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;->mGrid:Lcom/airbnb/android/views/StaticHeightGridView;

    invoke-virtual {v1}, Lcom/airbnb/android/views/StaticHeightGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/airbnb/android/fragments/ManageCalendarFragment$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/ManageCalendarFragment$1;-><init>(Lcom/airbnb/android/fragments/ManageCalendarFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 111
    iget-object v1, p0, Lcom/airbnb/android/fragments/ManageCalendarFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;

    iget-object v1, v1, Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;->mGrid:Lcom/airbnb/android/views/StaticHeightGridView;

    new-instance v2, Lcom/airbnb/android/fragments/ManageCalendarFragment$2;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/ManageCalendarFragment$2;-><init>(Lcom/airbnb/android/fragments/ManageCalendarFragment;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/StaticHeightGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 171
    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 255
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->unregister(Ljava/lang/Object;)V

    .line 256
    invoke-super {p0}, Lcom/airbnb/android/fragments/SquareCalendarFragment;->onDestroy()V

    .line 257
    return-void
.end method

.method public onFuxed(Lcom/airbnb/android/activities/ManageCalendarFUXActivity$CalendarFUXShowEvent;)V
    .registers 6
    .param p1, "event"    # Lcom/airbnb/android/activities/ManageCalendarFUXActivity$CalendarFUXShowEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 221
    iget-boolean v0, p1, Lcom/airbnb/android/activities/ManageCalendarFUXActivity$CalendarFUXShowEvent;->fuxed:Z

    if-eqz v0, :cond_14

    .line 222
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/airbnb/android/fragments/ManageCalendarFragment$4;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/ManageCalendarFragment$4;-><init>(Lcom/airbnb/android/fragments/ManageCalendarFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 234
    :goto_13
    return-void

    .line 231
    :cond_14
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ManageCalendarFragment;->revert()V

    goto :goto_13
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/SquareCalendarFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 79
    const-string/jumbo v0, "saved_state_start_square;"

    iget-object v1, p0, Lcom/airbnb/android/fragments/ManageCalendarFragment;->mStartSquare:Lcom/airbnb/android/models/CalendarSquare;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 80
    return-void
.end method

.method public revert()V
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/airbnb/android/fragments/ManageCalendarFragment;->mSquares:Lcom/airbnb/android/models/SquareMap;

    invoke-virtual {v0}, Lcom/airbnb/android/models/SquareMap;->resetAvailability()V

    .line 176
    iget-object v0, p0, Lcom/airbnb/android/fragments/ManageCalendarFragment;->mModifiedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 178
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/ManageCalendarFragment;->updateMonth(Ljava/util/Calendar;)V

    .line 179
    return-void
.end method

.method public sendOffUnavailabilities()V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 182
    iget-object v5, p0, Lcom/airbnb/android/fragments/ManageCalendarFragment;->mModifiedList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 183
    .local v1, "isAvailable":Z
    :goto_9
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 184
    .local v2, "props":Ljava/util/Properties;
    iget-object v5, p0, Lcom/airbnb/android/fragments/ManageCalendarFragment;->mModifiedList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/models/CalendarSquare;

    .line 185
    .local v3, "square":Lcom/airbnb/android/models/CalendarSquare;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "availability_dates["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/airbnb/android/models/CalendarSquare;->getDateString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/airbnb/android/models/CalendarSquare;->getAvailability()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    .line 182
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "isAvailable":Z
    .end local v2    # "props":Ljava/util/Properties;
    .end local v3    # "square":Lcom/airbnb/android/models/CalendarSquare;
    :cond_4b
    iget-object v5, p0, Lcom/airbnb/android/fragments/ManageCalendarFragment;->mModifiedList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/android/models/CalendarSquare;

    invoke-virtual {v5}, Lcom/airbnb/android/models/CalendarSquare;->getAvailability()Z

    move-result v1

    goto :goto_9

    .line 188
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "isAvailable":Z
    .restart local v2    # "props":Ljava/util/Properties;
    :cond_58
    new-instance v4, Lcom/airbnb/android/fragments/ManageCalendarFragment$CalendarUpdate;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ManageCalendarFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "listing_id"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    new-instance v7, Lcom/airbnb/android/fragments/ManageCalendarFragment$3;

    invoke-direct {v7, p0, v1}, Lcom/airbnb/android/fragments/ManageCalendarFragment$3;-><init>(Lcom/airbnb/android/fragments/ManageCalendarFragment;Z)V

    invoke-direct {v4, v5, v6, v2, v7}, Lcom/airbnb/android/fragments/ManageCalendarFragment$CalendarUpdate;-><init>(JLjava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    .line 216
    .local v4, "update":Lcom/airbnb/android/fragments/ManageCalendarFragment$CalendarUpdate;
    invoke-virtual {v4}, Lcom/airbnb/android/fragments/ManageCalendarFragment$CalendarUpdate;->execute()V

    .line 217
    return-void
.end method
