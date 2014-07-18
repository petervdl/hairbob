.class Lcom/airbnb/android/fragments/BookingDetailsFragment$1;
.super Ljava/lang/Object;
.source "BookingDetailsFragment.java"

# interfaces
.implements Lcom/airbnb/android/views/DateAndGuestCountView$DateAndGuestCountViewer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/BookingDetailsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/BookingDetailsFragment;)V
    .registers 2

    .prologue
    .line 296
    iput-object p1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$1;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFlow()Lcom/airbnb/android/analytics/BookItAnalytics$Flow;
    .registers 2

    .prologue
    .line 318
    sget-object v0, Lcom/airbnb/android/analytics/BookItAnalytics$Flow;->BOOK_IT:Lcom/airbnb/android/analytics/BookItAnalytics$Flow;

    return-object v0
.end method

.method public setGuestCount(I)V
    .registers 4
    .param p1, "guestCount"    # I

    .prologue
    .line 310
    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$1;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/BookingDetailsFragment;->mGuestCount:I
    invoke-static {v1}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$100(Lcom/airbnb/android/fragments/BookingDetailsFragment;)I

    move-result v1

    if-eq p1, v1, :cond_14

    const/4 v0, 0x1

    .line 311
    .local v0, "force":Z
    :goto_9
    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$1;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    # setter for: Lcom/airbnb/android/fragments/BookingDetailsFragment;->mGuestCount:I
    invoke-static {v1, p1}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$102(Lcom/airbnb/android/fragments/BookingDetailsFragment;I)I

    .line 313
    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$1;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    # invokes: Lcom/airbnb/android/fragments/BookingDetailsFragment;->refreshDatesAndGuestCount(Z)V
    invoke-static {v1, v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$200(Lcom/airbnb/android/fragments/BookingDetailsFragment;Z)V

    .line 314
    return-void

    .line 310
    .end local v0    # "force":Z
    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public showCalendarDialog(Lcom/airbnb/android/views/DateAndGuestCountView;)V
    .registers 11
    .param p1, "dateAndGuestCountView"    # Lcom/airbnb/android/views/DateAndGuestCountView;

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, 0x0

    .line 300
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/AirbnbApplication;->getAnalyticsRegistry()Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "calendar_type"

    const-string/jumbo v5, "booking"

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    .line 301
    const-string/jumbo v3, "android_eng"

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v4

    const-string/jumbo v5, "calendar_action"

    const-string/jumbo v6, "select_dates"

    invoke-virtual {v4, v5, v6}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v4

    const-string/jumbo v5, "calendar_type"

    const-string/jumbo v6, "booking"

    invoke-virtual {v4, v5, v6}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 303
    iget-object v3, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$1;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/BookingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v3}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$000(Lcom/airbnb/android/fragments/BookingDetailsFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getMinNights()I

    move-result v5

    iget-object v3, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$1;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/BookingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v3}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$000(Lcom/airbnb/android/fragments/BookingDetailsFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v6

    move-wide v3, v1

    invoke-static/range {v0 .. v7}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->newInstanceForListing(IJJIJ)Lcom/airbnb/android/fragments/CalendarDialogFragment;

    move-result-object v8

    .line 304
    .local v8, "dialog":Lcom/airbnb/android/fragments/CalendarDialogFragment;
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$1;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    const/16 v1, 0x65

    invoke-virtual {v8, v0, v1}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 305
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$1;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method public showDialogIfClickWithSpecialOffer()V
    .registers 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v4, 0x0

    .line 325
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 326
    .local v8, "forCheckOutDate":Ljava/util/Calendar;
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$1;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/BookingDetailsFragment;->mSpecialOffer:Lcom/airbnb/android/models/SpecialOffer;
    invoke-static {v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$300(Lcom/airbnb/android/fragments/BookingDetailsFragment;)Lcom/airbnb/android/models/SpecialOffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/SpecialOffer;->getStartDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 327
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$1;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/BookingDetailsFragment;->mSpecialOffer:Lcom/airbnb/android/models/SpecialOffer;
    invoke-static {v1}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$300(Lcom/airbnb/android/fragments/BookingDetailsFragment;)Lcom/airbnb/android/models/SpecialOffer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/SpecialOffer;->getNights()I

    move-result v1

    invoke-virtual {v8, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 330
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$1;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    const v1, 0x7f0e06b7

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 331
    .local v6, "dashSeparator":Ljava/lang/String;
    new-instance v9, Ljava/text/SimpleDateFormat;

    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$1;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    const v1, 0x7f0e013d

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 334
    .local v9, "monthDateSdf":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$1;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/BookingDetailsFragment;->mSpecialOffer:Lcom/airbnb/android/models/SpecialOffer;
    invoke-static {v1}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$300(Lcom/airbnb/android/fragments/BookingDetailsFragment;)Lcom/airbnb/android/models/SpecialOffer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/SpecialOffer;->getStartDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 335
    .local v7, "dateRange":Ljava/lang/String;
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$1;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d002d

    iget-object v2, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$1;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/BookingDetailsFragment;->mSpecialOffer:Lcom/airbnb/android/models/SpecialOffer;
    invoke-static {v2}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$300(Lcom/airbnb/android/fragments/BookingDetailsFragment;)Lcom/airbnb/android/models/SpecialOffer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/SpecialOffer;->getNumberOfGuests()I

    move-result v2

    new-array v3, v12, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$1;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/BookingDetailsFragment;->mSpecialOffer:Lcom/airbnb/android/models/SpecialOffer;
    invoke-static {v5}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$300(Lcom/airbnb/android/fragments/BookingDetailsFragment;)Lcom/airbnb/android/models/SpecialOffer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/android/models/SpecialOffer;->getNumberOfGuests()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 338
    .local v10, "numGuests":Ljava/lang/String;
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$1;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    const v1, 0x7f0e057f

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v7, v2, v4

    aput-object v10, v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 341
    .local v11, "specialOfferString":Ljava/lang/String;
    invoke-static {}, Lcom/airbnb/android/fragments/ZenDialog;->Builder()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e071b

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withTitle(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withBodyText(Ljava/lang/String;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withSwipeToDismiss()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e0580

    const/16 v2, 0x3ee

    const v3, 0x7f0e057e

    iget-object v5, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$1;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-virtual/range {v0 .. v5}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withDualButton(IIIILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$1;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 348
    return-void
.end method
