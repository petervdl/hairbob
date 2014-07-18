.class public Lcom/airbnb/android/fragments/ROItineraryFragment;
.super Lcom/airbnb/android/fragments/ROScrollViewFragmentBase;
.source "ROItineraryFragment.java"


# static fields
.field private static final DIALOG_REQ_CANCEL_PENDING_RES:I = 0x3e1


# instance fields
.field private mCalendar:Lcom/airbnb/android/fragments/SquareCalendarFragment;

.field mCheckOutTextView:Landroid/widget/TextView;

.field private mHostMode:Z

.field mMapLayout:Landroid/view/View;

.field private mReservation:Lcom/airbnb/android/models/Reservation;

.field mStickyButton:Lcom/airbnb/android/views/StickyButton;

.field private mThreadId:J

.field private mThreadStatus:Lcom/airbnb/android/models/ReservationStatus;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ROScrollViewFragmentBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/ROItineraryFragment;)Lcom/airbnb/android/models/Reservation;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROItineraryFragment;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/ROItineraryFragment;)Lcom/airbnb/android/fragments/SquareCalendarFragment;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROItineraryFragment;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mCalendar:Lcom/airbnb/android/fragments/SquareCalendarFragment;

    return-object v0
.end method

.method static synthetic access$102(Lcom/airbnb/android/fragments/ROItineraryFragment;Lcom/airbnb/android/fragments/SquareCalendarFragment;)Lcom/airbnb/android/fragments/SquareCalendarFragment;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROItineraryFragment;
    .param p1, "x1"    # Lcom/airbnb/android/fragments/SquareCalendarFragment;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mCalendar:Lcom/airbnb/android/fragments/SquareCalendarFragment;

    return-object p1
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/ROItineraryFragment;)J
    .registers 3
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROItineraryFragment;

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mThreadId:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/ROItineraryFragment;Landroid/view/View;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROItineraryFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/ROItineraryFragment;->setupForNewArrivalPlan(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/ROItineraryFragment;Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;Landroid/view/View;)V
    .registers 3
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ROItineraryFragment;
    .param p1, "x1"    # Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/fragments/ROItineraryFragment;->updateArrivalPlanDetails(Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;Landroid/view/View;)V

    return-void
.end method

.method private doStaticMapView()V
    .registers 6

    .prologue
    .line 386
    new-instance v0, Lcom/airbnb/android/fragments/ROItineraryFragment$12;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/ROItineraryFragment$12;-><init>(Lcom/airbnb/android/fragments/ROItineraryFragment;)V

    .line 421
    .local v0, "listener":Landroid/view/View$OnClickListener;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROItineraryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mMapLayout:Landroid/view/View;

    iget-object v3, p0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Reservation;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Reservation;->isAccepted()Z

    move-result v4

    invoke-static {v1, v2, v3, v0, v4}, Lcom/airbnb/android/fragments/ROItineraryFragment;->setupMap(Landroid/content/Context;Landroid/view/View;Lcom/airbnb/android/models/Listing;Landroid/view/View$OnClickListener;Z)V

    .line 423
    return-void
.end method

.method private getArrivalTransportationDisplay(Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;)Ljava/lang/String;
    .registers 10
    .param p1, "arrivalPlan"    # Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 682
    const/4 v0, 0x0

    .line 683
    .local v0, "displayString":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getTransportationType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->getTransportationFromParam(Ljava/lang/String;Z)Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    move-result-object v1

    .line 684
    .local v1, "primaryTransport":Lcom/airbnb/android/models/arrivalAssistant/Transportation;
    if-eqz v1, :cond_43

    sget-object v3, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->PLANE:Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    if-ne v1, v3, :cond_43

    .line 685
    invoke-virtual {p1}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getSecondaryTransportationType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->getTransportationFromParam(Ljava/lang/String;Z)Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    move-result-object v2

    .line 686
    .local v2, "secondaryTransport":Lcom/airbnb/android/models/arrivalAssistant/Transportation;
    if-eqz v2, :cond_3a

    const v3, 0x7f0e001c

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->getDisplayStringId()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/airbnb/android/fragments/ROItineraryFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2}, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->getDisplayStringId()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/airbnb/android/fragments/ROItineraryFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/airbnb/android/fragments/ROItineraryFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 693
    .end local v2    # "secondaryTransport":Lcom/airbnb/android/models/arrivalAssistant/Transportation;
    :cond_39
    :goto_39
    return-object v0

    .line 686
    .restart local v2    # "secondaryTransport":Lcom/airbnb/android/models/arrivalAssistant/Transportation;
    :cond_3a
    invoke-virtual {v1}, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->getDisplayStringId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/airbnb/android/fragments/ROItineraryFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_39

    .line 690
    .end local v2    # "secondaryTransport":Lcom/airbnb/android/models/arrivalAssistant/Transportation;
    :cond_43
    if-eqz v1, :cond_39

    .line 691
    invoke-virtual {v1}, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->getDisplayStringId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/airbnb/android/fragments/ROItineraryFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_39
.end method

.method private handleArrivalAssistant(Landroid/view/View;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 577
    const-string/jumbo v1, "arrival_tracker"

    const-string/jumbo v2, "enabled"

    invoke-static {v1, v2, v4}, Lcom/airbnb/android/utils/Trebuchet;->launch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_66

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Reservation;->isAccepted()Z

    move-result v1

    if-eqz v1, :cond_66

    .line 578
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 580
    .local v0, "today":Ljava/util/Date;
    iget-boolean v1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mHostMode:Z

    if-eqz v1, :cond_3f

    .line 581
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-static {v1, v0}, Lcom/airbnb/android/models/Reservation;->dateWithinReservation(Lcom/airbnb/android/interfaces/Reservationable;Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 582
    new-instance v1, Lcom/airbnb/android/requests/GetArrivalPlanRequest;

    iget-object v2, p0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Reservation;->getConfirmationCode()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/airbnb/android/fragments/ROItineraryFragment$18;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/ROItineraryFragment$18;-><init>(Lcom/airbnb/android/fragments/ROItineraryFragment;)V

    invoke-direct {v1, v2, v3}, Lcom/airbnb/android/requests/GetArrivalPlanRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v1, p0}, Lcom/airbnb/android/requests/GetArrivalPlanRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 630
    .end local v0    # "today":Ljava/util/Date;
    :cond_3e
    :goto_3e
    return-void

    .line 606
    .restart local v0    # "today":Ljava/util/Date;
    :cond_3f
    new-instance v1, Lcom/airbnb/android/requests/GetArrivalPlanRequest;

    iget-object v2, p0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Reservation;->getConfirmationCode()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/airbnb/android/fragments/ROItineraryFragment$19;

    invoke-direct {v3, p0, p1}, Lcom/airbnb/android/fragments/ROItineraryFragment$19;-><init>(Lcom/airbnb/android/fragments/ROItineraryFragment;Landroid/view/View;)V

    invoke-direct {v1, v2, v3}, Lcom/airbnb/android/requests/GetArrivalPlanRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v1, p0}, Lcom/airbnb/android/requests/GetArrivalPlanRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 624
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v1

    invoke-static {v1, v2, v5}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->trackReservationObjectArrivalAssistantEnabledImpression(JLcom/airbnb/android/utils/Strap;)V

    .line 625
    const v1, 0x7f080475

    invoke-static {p1, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3e

    .line 628
    .end local v0    # "today":Ljava/util/Date;
    :cond_66
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v1

    invoke-static {v1, v2, v5}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->trackReservationObjectArrivalAssistantNotEnabledImpression(JLcom/airbnb/android/utils/Strap;)V

    goto :goto_3e
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/ROItineraryFragment;
    .registers 1

    .prologue
    .line 94
    new-instance v0, Lcom/airbnb/android/fragments/ROItineraryFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/ROItineraryFragment;-><init>()V

    .line 95
    .local v0, "frag":Lcom/airbnb/android/fragments/ROItineraryFragment;
    return-object v0
.end method

.method private setEstimatedArrivalTime(Ljava/lang/String;)V
    .registers 6
    .param p1, "estimatedArrivalTime"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 571
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROItineraryFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080057

    invoke-static {v1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/AirTextView;

    .line 572
    .local v0, "estimatedTimeDetails":Lcom/airbnb/android/views/AirTextView;
    const v1, 0x7f0e0010

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/airbnb/android/fragments/ROItineraryFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/AirTextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    invoke-virtual {v0, v3}, Lcom/airbnb/android/views/AirTextView;->setVisibility(I)V

    .line 574
    return-void
.end method

.method private setHostMode(Landroid/view/View;)V
    .registers 4
    .param p1, "root"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x8

    .line 426
    const v0, 0x7f0801e1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 427
    const v0, 0x7f080476

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 428
    const v0, 0x7f080478

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 429
    const v0, 0x7f080477

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 430
    const v0, 0x7f080485

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 431
    return-void
.end method

.method private setupForNewArrivalPlan(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 633
    new-instance v0, Lcom/airbnb/android/fragments/ROItineraryFragment$20;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/ROItineraryFragment$20;-><init>(Lcom/airbnb/android/fragments/ROItineraryFragment;)V

    .line 647
    .local v0, "onClickListener":Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/StickyButton;->setVisibility(I)V

    .line 648
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    const v2, 0x7f0e0001

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/StickyButton;->setTitle(I)V

    .line 649
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    invoke-virtual {v1, v0}, Lcom/airbnb/android/views/StickyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 651
    const v1, 0x7f080055

    invoke-static {p1, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 653
    const v1, 0x7f080056

    invoke-static {p1, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/AirTextView;

    const/high16 v2, 0x7f0e0000

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/AirTextView;->setText(I)V

    .line 654
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROItineraryFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080057

    invoke-static {v1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 655
    return-void
.end method

.method public static setupMap(Landroid/content/Context;Landroid/view/View;Lcom/airbnb/android/models/Listing;Landroid/view/View$OnClickListener;Z)V
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listingDetailMap"    # Landroid/view/View;
    .param p2, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p3, "listener"    # Landroid/view/View$OnClickListener;
    .param p4, "isAcceptedReservation"    # Z

    .prologue
    .line 718
    if-eqz p4, :cond_9a

    invoke-virtual {p2}, Lcom/airbnb/android/models/Listing;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 719
    .local v1, "addressToShow":Ljava/lang/String;
    :goto_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 720
    invoke-virtual {p2}, Lcom/airbnb/android/models/Listing;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 722
    :cond_10
    const v7, 0x7f080219

    invoke-static {p1, v7}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 725
    const v7, 0x7f0803d3

    invoke-static {p1, v7}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 726
    .local v4, "neighborhoodText":Landroid/widget/TextView;
    invoke-virtual {p2}, Lcom/airbnb/android/models/Listing;->getNeighborhood()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a0

    .line 727
    const v7, 0x7f0e053a

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p2}, Lcom/airbnb/android/models/Listing;->getNeighborhood()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 732
    :goto_43
    const v7, 0x7f0803d2

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 734
    .local v0, "addressNeighborhoodLayout":Landroid/view/View;
    if-eqz p4, :cond_58

    .line 735
    invoke-virtual {p2}, Lcom/airbnb/android/models/Listing;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 736
    .local v3, "finalAddress":Ljava/lang/String;
    new-instance v7, Lcom/airbnb/android/fragments/ROItineraryFragment$22;

    invoke-direct {v7, v3}, Lcom/airbnb/android/fragments/ROItineraryFragment$22;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 746
    .end local v3    # "finalAddress":Ljava/lang/String;
    :cond_58
    const v7, 0x7f080213

    invoke-static {p1, v7}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/airbnb/android/views/StaticMapView;

    .line 748
    .local v6, "staticMap":Lcom/airbnb/android/views/StaticMapView;
    invoke-virtual {v6, p2}, Lcom/airbnb/android/views/StaticMapView;->setup(Lcom/airbnb/android/models/Listing;)V

    .line 749
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p2}, Lcom/airbnb/android/models/Listing;->getLatitude()D

    move-result-wide v7

    invoke-virtual {p2}, Lcom/airbnb/android/models/Listing;->getLongitude()D

    move-result-wide v9

    invoke-direct {v2, v7, v8, v9, v10}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 752
    .local v2, "coordinate":Lcom/google/android/gms/maps/model/LatLng;
    new-instance v5, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p2}, Lcom/airbnb/android/models/Listing;->getLatitude()D

    move-result-wide v7

    const-wide v9, 0x3f847ae147ae147bL

    sub-double/2addr v7, v9

    invoke-virtual {p2}, Lcom/airbnb/android/models/Listing;->getLongitude()D

    move-result-wide v9

    invoke-direct {v5, v7, v8, v9, v10}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 753
    .local v5, "offsetCoordinate":Lcom/google/android/gms/maps/model/LatLng;
    const/16 v7, 0xd

    invoke-virtual {v6, v5, v7}, Lcom/airbnb/android/views/StaticMapView;->centerMap(Lcom/google/android/gms/maps/model/LatLng;I)V

    .line 755
    if-eqz p3, :cond_91

    .line 756
    invoke-virtual {v6, p3}, Lcom/airbnb/android/views/StaticMapView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 757
    invoke-virtual {v0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 761
    :cond_91
    if-eqz p4, :cond_a6

    .line 762
    invoke-virtual {v6, v2}, Lcom/airbnb/android/views/StaticMapView;->addMarkerToMap(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 767
    :goto_96
    invoke-virtual {v6}, Lcom/airbnb/android/views/StaticMapView;->freeze()V

    .line 768
    return-void

    .line 718
    .end local v0    # "addressNeighborhoodLayout":Landroid/view/View;
    .end local v1    # "addressToShow":Ljava/lang/String;
    .end local v2    # "coordinate":Lcom/google/android/gms/maps/model/LatLng;
    .end local v4    # "neighborhoodText":Landroid/widget/TextView;
    .end local v5    # "offsetCoordinate":Lcom/google/android/gms/maps/model/LatLng;
    .end local v6    # "staticMap":Lcom/airbnb/android/views/StaticMapView;
    :cond_9a
    invoke-virtual {p2}, Lcom/airbnb/android/models/Listing;->getPublicAddress()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_6

    .line 729
    .restart local v1    # "addressToShow":Ljava/lang/String;
    .restart local v4    # "neighborhoodText":Landroid/widget/TextView;
    :cond_a0
    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_43

    .line 764
    .restart local v0    # "addressNeighborhoodLayout":Landroid/view/View;
    .restart local v2    # "coordinate":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v5    # "offsetCoordinate":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v6    # "staticMap":Lcom/airbnb/android/views/StaticMapView;
    :cond_a6
    invoke-virtual {v6, p0, v2}, Lcom/airbnb/android/views/StaticMapView;->addCircleToMap(Landroid/content/Context;Lcom/google/android/gms/maps/model/LatLng;)V

    goto :goto_96
.end method

.method private setupReservation(Lcom/airbnb/android/models/Reservation;Landroid/view/View;)V
    .registers 39
    .param p1, "reservation"    # Lcom/airbnb/android/models/Reservation;
    .param p2, "view"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v27

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v29

    cmp-long v27, v27, v29

    if-eqz v27, :cond_20

    .line 143
    :cond_1a
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    .line 146
    :cond_20
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/android/models/Reservation;->currUserIsHost()Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/airbnb/android/fragments/ROItineraryFragment;->mHostMode:Z

    .line 147
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/android/models/Reservation;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v16

    .line 149
    .local v16, "listing":Lcom/airbnb/android/models/Listing;
    const v27, 0x7f080463

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    invoke-virtual/range {v16 .. v16}, Lcom/airbnb/android/models/Listing;->getName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    const v27, 0x7f080465

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    invoke-virtual/range {v16 .. v16}, Lcom/airbnb/android/models/Listing;->getRoomType()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    const v27, 0x7f080468

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    new-instance v28, Lcom/airbnb/android/fragments/ROItineraryFragment$1;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/fragments/ROItineraryFragment$1;-><init>(Lcom/airbnb/android/fragments/ROItineraryFragment;Lcom/airbnb/android/models/Listing;)V

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    new-instance v14, Ljava/text/SimpleDateFormat;

    const v27, 0x7f0e0497

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ROItineraryFragment;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v14, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 161
    .local v14, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual/range {v16 .. v16}, Lcom/airbnb/android/models/Listing;->getCheckInTime()Ljava/lang/Integer;

    move-result-object v7

    .line 162
    .local v7, "checkin":Ljava/lang/Integer;
    const v27, 0x7f080469

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/android/models/Reservation;->getStartDate()Ljava/util/Date;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    const v27, 0x7f08046a

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 164
    .local v17, "mCheckInTextView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/airbnb/android/models/Reservation;->isAccepted()Z

    move-result v27

    if-eqz v27, :cond_3e1

    .line 165
    if-nez v7, :cond_3d7

    const v27, 0x7f0e01e4

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ROItineraryFragment;->getString(I)Ljava/lang/String;

    move-result-object v27

    :goto_c5
    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    :goto_cc
    invoke-virtual/range {v16 .. v16}, Lcom/airbnb/android/models/Listing;->getCheckOutTime()Ljava/lang/Integer;

    move-result-object v8

    .line 171
    .local v8, "checkout":Ljava/lang/Integer;
    const v27, 0x7f08046b

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/android/models/Reservation;->getEndDate()Ljava/util/Date;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/airbnb/android/models/Reservation;->isAccepted()Z

    move-result v27

    if-eqz v27, :cond_3f6

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mCheckOutTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    if-nez v8, :cond_3ec

    const v27, 0x7f0e01e4

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ROItineraryFragment;->getString(I)Ljava/lang/String;

    move-result-object v27

    :goto_109
    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    :goto_110
    const-string/jumbo v27, ", "

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/fragments/ROItineraryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0d0039

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/android/models/Reservation;->getReservedNightsCount()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/android/models/Reservation;->getReservedNightsCount()I

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-virtual/range {v30 .. v33}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/fragments/ROItineraryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0d002d

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/android/models/Reservation;->getGuestCount()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/android/models/Reservation;->getGuestCount()I

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-virtual/range {v30 .. v33}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    .line 182
    .local v23, "stats":Ljava/lang/String;
    const v27, 0x7f08046d

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Lcom/airbnb/android/views/GroupedCell;

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCell;->setContent(Ljava/lang/CharSequence;)V

    .line 184
    const v27, 0x7f08046e

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/airbnb/android/views/GroupedCell;

    .line 185
    .local v10, "confirmationCodeCell":Lcom/airbnb/android/views/GroupedCell;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/airbnb/android/models/Reservation;->getConfirmationCode()Ljava/lang/String;

    move-result-object v9

    .line 186
    .local v9, "confirmationCode":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_403

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/airbnb/android/models/Reservation;->isPending()Z

    move-result v27

    if-nez v27, :cond_403

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/airbnb/android/models/Reservation;->isDenied()Z

    move-result v27

    if-nez v27, :cond_403

    .line 188
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v10, v0}, Lcom/airbnb/android/views/GroupedCell;->setVisibility(I)V

    .line 189
    invoke-virtual {v10, v9}, Lcom/airbnb/android/views/GroupedCell;->setContent(Ljava/lang/CharSequence;)V

    .line 194
    :goto_1c0
    const v27, 0x7f080471

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Lcom/airbnb/android/views/GroupedCell;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/airbnb/android/fragments/ROItineraryFragment;->updateSpecialOfferLink(Lcom/airbnb/android/views/GroupedCell;)V

    .line 195
    const v27, 0x7f08046f

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Lcom/airbnb/android/views/GroupedCell;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/airbnb/android/fragments/ROItineraryFragment;->updatePricing(Lcom/airbnb/android/views/GroupedCell;)V

    .line 196
    const v27, 0x7f080470

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Lcom/airbnb/android/views/GroupedCell;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/airbnb/android/fragments/ROItineraryFragment;->updateAdditionalCharges(Lcom/airbnb/android/views/GroupedCell;)V

    .line 198
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mHostMode:Z

    move/from16 v27, v0

    if-eqz v27, :cond_40c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/airbnb/android/models/Reservation;->getGuest()Lcom/airbnb/android/models/User;

    move-result-object v26

    .line 199
    .local v26, "user":Lcom/airbnb/android/models/User;
    :goto_20e
    const v27, 0x7f08047a

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mHostMode:Z

    move/from16 v28, v0

    if-eqz v28, :cond_418

    const v28, 0x7f0e0132

    :goto_226
    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 200
    const v27, 0x7f08047b

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Lcom/airbnb/android/views/HaloImageView;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/HaloImageView;->setImageUrlForUser(Lcom/airbnb/android/models/User;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/airbnb/android/models/Reservation;->isAccepted()Z

    move-result v27

    if-eqz v27, :cond_45b

    .line 204
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mHostMode:Z

    move/from16 v27, v0

    if-nez v27, :cond_2a4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/airbnb/android/models/Reservation;->getTripInvoice()Lcom/airbnb/android/models/TripInvoice;

    move-result-object v27

    if-eqz v27, :cond_2a4

    const-string/jumbo v27, "trip_charges"

    const-string/jumbo v28, "android_enabled"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Lcom/airbnb/android/utils/Trebuchet;->launch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v27

    if-eqz v27, :cond_2a4

    .line 205
    const v27, 0x7f08046f

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Lcom/airbnb/android/views/GroupedCell;

    const v28, 0x7f0e0629

    invoke-virtual/range {v27 .. v28}, Lcom/airbnb/android/views/GroupedCell;->setTitle(I)V

    .line 206
    const v27, 0x7f080470

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Lcom/airbnb/android/views/GroupedCell;

    .line 207
    .local v25, "tripChargesCell":Lcom/airbnb/android/views/GroupedCell;
    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCell;->setVisibility(I)V

    .line 208
    new-instance v27, Lcom/airbnb/android/fragments/ROItineraryFragment$2;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/airbnb/android/fragments/ROItineraryFragment$2;-><init>(Lcom/airbnb/android/fragments/ROItineraryFragment;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    .end local v25    # "tripChargesCell":Lcom/airbnb/android/views/GroupedCell;
    :cond_2a4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/airbnb/android/fragments/ROItineraryFragment;->handleArrivalAssistant(Landroid/view/View;)V

    .line 221
    if-eqz v26, :cond_41d

    invoke-virtual/range {v26 .. v26}, Lcom/airbnb/android/models/User;->getPhone()Ljava/lang/String;

    move-result-object v20

    .line 222
    .local v20, "phoneNumber":Ljava/lang/String;
    :goto_2b1
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_422

    .line 223
    const v27, 0x7f080480

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    const v27, 0x7f08047f

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    .line 227
    .local v19, "phoneImageView":Landroid/widget/ImageView;
    const v27, 0x7f02013f

    const v28, 0x7f0a00ab

    invoke-static/range {v27 .. v28}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdStateList(II)Lcom/airbnb/android/utils/ColorizedDrawable;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 229
    new-instance v27, Lcom/airbnb/android/fragments/ROItineraryFragment$3;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/fragments/ROItineraryFragment$3;-><init>(Lcom/airbnb/android/fragments/ROItineraryFragment;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    const v27, 0x7f08047d

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    .line 239
    .local v22, "smsImageView":Landroid/widget/ImageView;
    const v27, 0x7f020140

    const v28, 0x7f0a00ab

    invoke-static/range {v27 .. v28}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdStateList(II)Lcom/airbnb/android/utils/ColorizedDrawable;

    move-result-object v27

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 241
    new-instance v27, Lcom/airbnb/android/fragments/ROItineraryFragment$4;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/fragments/ROItineraryFragment$4;-><init>(Lcom/airbnb/android/fragments/ROItineraryFragment;Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    .end local v19    # "phoneImageView":Landroid/widget/ImageView;
    .end local v22    # "smsImageView":Landroid/widget/ImageView;
    :goto_32b
    if-eqz v26, :cond_444

    invoke-virtual/range {v26 .. v26}, Lcom/airbnb/android/models/User;->getEmailAddress()Ljava/lang/String;

    move-result-object v11

    .line 255
    .local v11, "email":Ljava/lang/String;
    :goto_331
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_449

    .line 256
    const v27, 0x7f080484

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    const v27, 0x7f080483

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 260
    .local v12, "emailImageView":Landroid/widget/ImageView;
    const v27, 0x7f02013e

    const v28, 0x7f0a00ab

    invoke-static/range {v27 .. v28}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdStateList(II)Lcom/airbnb/android/utils/ColorizedDrawable;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 262
    new-instance v27, Lcom/airbnb/android/fragments/ROItineraryFragment$5;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/airbnb/android/fragments/ROItineraryFragment$5;-><init>(Lcom/airbnb/android/fragments/ROItineraryFragment;Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    .end local v12    # "emailImageView":Landroid/widget/ImageView;
    :goto_373
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_38f

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_38f

    .line 275
    const v27, 0x7f080479

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 282
    .end local v11    # "email":Ljava/lang/String;
    .end local v20    # "phoneNumber":Ljava/lang/String;
    :cond_38f
    :goto_38f
    const v27, 0x7f080487

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Button;

    .line 283
    .local v18, "manageCalendar":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mHostMode:Z

    move/from16 v27, v0

    if-eqz v27, :cond_46d

    .line 284
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/airbnb/android/fragments/ROItineraryFragment;->setHostMode(Landroid/view/View;)V

    .line 285
    new-instance v27, Lcom/airbnb/android/fragments/ROItineraryFragment$6;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/fragments/ROItineraryFragment$6;-><init>(Lcom/airbnb/android/fragments/ROItineraryFragment;Lcom/airbnb/android/models/Listing;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    new-instance v27, Lcom/airbnb/android/requests/CalendarRequest;

    invoke-virtual/range {v16 .. v16}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v28

    new-instance v30, Lcom/airbnb/android/fragments/ROItineraryFragment$7;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/airbnb/android/fragments/ROItineraryFragment$7;-><init>(Lcom/airbnb/android/fragments/ROItineraryFragment;)V

    invoke-direct/range {v27 .. v30}, Lcom/airbnb/android/requests/CalendarRequest;-><init>(JLcom/airbnb/android/requests/RequestListener;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/requests/CalendarRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 383
    :goto_3d6
    return-void

    .line 165
    .end local v8    # "checkout":Ljava/lang/Integer;
    .end local v9    # "confirmationCode":Ljava/lang/String;
    .end local v10    # "confirmationCodeCell":Lcom/airbnb/android/views/GroupedCell;
    .end local v18    # "manageCalendar":Landroid/widget/Button;
    .end local v23    # "stats":Ljava/lang/String;
    .end local v26    # "user":Lcom/airbnb/android/models/User;
    :cond_3d7
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v27

    invoke-static/range {v27 .. v27}, Lcom/airbnb/android/utils/CalendarHelper;->formatHour(I)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_c5

    .line 167
    :cond_3e1
    const/16 v27, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_cc

    .line 173
    .restart local v8    # "checkout":Ljava/lang/Integer;
    :cond_3ec
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v27

    invoke-static/range {v27 .. v27}, Lcom/airbnb/android/utils/CalendarHelper;->formatHour(I)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_109

    .line 175
    :cond_3f6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mCheckOutTextView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_110

    .line 191
    .restart local v9    # "confirmationCode":Ljava/lang/String;
    .restart local v10    # "confirmationCodeCell":Lcom/airbnb/android/views/GroupedCell;
    .restart local v23    # "stats":Ljava/lang/String;
    :cond_403
    const/16 v27, 0x8

    move/from16 v0, v27

    invoke-virtual {v10, v0}, Lcom/airbnb/android/views/GroupedCell;->setVisibility(I)V

    goto/16 :goto_1c0

    .line 198
    :cond_40c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/airbnb/android/models/Reservation;->getHost()Lcom/airbnb/android/models/User;

    move-result-object v26

    goto/16 :goto_20e

    .line 199
    .restart local v26    # "user":Lcom/airbnb/android/models/User;
    :cond_418
    const v28, 0x7f0e0133

    goto/16 :goto_226

    .line 221
    :cond_41d
    const-string/jumbo v20, ""

    goto/16 :goto_2b1

    .line 249
    .restart local v20    # "phoneNumber":Ljava/lang/String;
    :cond_422
    const v27, 0x7f08047c

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 250
    const v27, 0x7f080481

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_32b

    .line 254
    :cond_444
    const-string/jumbo v11, ""

    goto/16 :goto_331

    .line 270
    .restart local v11    # "email":Ljava/lang/String;
    :cond_449
    const v27, 0x7f080482

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_373

    .line 279
    .end local v11    # "email":Ljava/lang/String;
    .end local v20    # "phoneNumber":Ljava/lang/String;
    :cond_45b
    const v27, 0x7f080479

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_38f

    .line 317
    .restart local v18    # "manageCalendar":Landroid/widget/Button;
    :cond_46d
    const/16 v27, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 319
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/android/fragments/ROItineraryFragment;->doStaticMapView()V

    .line 321
    const v27, 0x7f080478

    invoke-virtual/range {v16 .. v16}, Lcom/airbnb/android/models/Listing;->getHouseManual()Ljava/lang/String;

    move-result-object v28

    const v29, 0x7f0e02cc

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v27

    move-object/from16 v3, v28

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/airbnb/android/fragments/ROItineraryFragment;->setupTitleSubtitle(Landroid/view/View;ILjava/lang/String;I)V

    .line 322
    const v27, 0x7f080477

    invoke-virtual/range {v16 .. v16}, Lcom/airbnb/android/models/Listing;->getHouseRules()Ljava/lang/String;

    move-result-object v28

    const v29, 0x7f0e02cd

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v27

    move-object/from16 v3, v28

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/airbnb/android/fragments/ROItineraryFragment;->setupTitleSubtitle(Landroid/view/View;ILjava/lang/String;I)V

    .line 324
    const v27, 0x7f080476

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/airbnb/android/views/GroupedCell;

    .line 325
    .local v6, "cancellationCell":Lcom/airbnb/android/views/GroupedCell;
    invoke-virtual/range {v16 .. v16}, Lcom/airbnb/android/models/Listing;->getCancellationPolicy()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Lcom/airbnb/android/views/GroupedCell;->setContent(Ljava/lang/CharSequence;)V

    .line 326
    new-instance v27, Lcom/airbnb/android/fragments/ROItineraryFragment$8;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/fragments/ROItineraryFragment$8;-><init>(Lcom/airbnb/android/fragments/ROItineraryFragment;Lcom/airbnb/android/models/Listing;)V

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Lcom/airbnb/android/views/GroupedCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/airbnb/android/models/Reservation;->isPending()Z

    move-result v27

    if-eqz v27, :cond_568

    .line 335
    const v27, 0x7f080472

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/airbnb/android/views/GroupedCell;

    .line 336
    .local v21, "requestStatusCell":Lcom/airbnb/android/views/GroupedCell;
    const/16 v27, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCell;->setVisibility(I)V

    .line 337
    const v27, 0x7f0e0729

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCell;->setContent(I)V

    .line 338
    new-instance v27, Lcom/airbnb/android/fragments/ROItineraryFragment$9;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/airbnb/android/fragments/ROItineraryFragment$9;-><init>(Lcom/airbnb/android/fragments/ROItineraryFragment;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    const v27, 0x7f080473

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/airbnb/android/views/GroupedCell;

    .line 348
    .local v13, "expiresTimerCell":Lcom/airbnb/android/views/GroupedCell;
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Lcom/airbnb/android/views/GroupedCell;->setVisibility(I)V

    .line 349
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/fragments/ROItineraryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/airbnb/android/models/Reservation;->getPendingExpiresAt()Ljava/util/Date;

    move-result-object v28

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Lcom/airbnb/android/utils/DateHelper;->getTimeRemaining(Landroid/content/Context;Ljava/util/Date;Z)Ljava/lang/String;

    move-result-object v24

    .line 350
    .local v24, "timeRemaining":Ljava/lang/String;
    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Lcom/airbnb/android/views/GroupedCell;->setContent(Ljava/lang/CharSequence;)V

    .line 351
    invoke-virtual {v13}, Lcom/airbnb/android/views/GroupedCell;->getTooltip()Lcom/airbnb/android/views/GroupedTooltip;

    move-result-object v27

    new-instance v28, Lcom/airbnb/android/fragments/ROItineraryFragment$10;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/airbnb/android/fragments/ROItineraryFragment$10;-><init>(Lcom/airbnb/android/fragments/ROItineraryFragment;)V

    invoke-virtual/range {v27 .. v28}, Lcom/airbnb/android/views/GroupedTooltip;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    const v27, 0x7f080474

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/airbnb/android/views/GroupedCell;

    .line 361
    .local v5, "cancelRequestBtn":Lcom/airbnb/android/views/GroupedCell;
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/airbnb/android/views/GroupedCell;->setVisibility(I)V

    .line 362
    new-instance v27, Lcom/airbnb/android/fragments/ROItineraryFragment$11;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/airbnb/android/fragments/ROItineraryFragment$11;-><init>(Lcom/airbnb/android/fragments/ROItineraryFragment;)V

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/airbnb/android/views/GroupedCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    .end local v5    # "cancelRequestBtn":Lcom/airbnb/android/views/GroupedCell;
    .end local v13    # "expiresTimerCell":Lcom/airbnb/android/views/GroupedCell;
    .end local v21    # "requestStatusCell":Lcom/airbnb/android/views/GroupedCell;
    .end local v24    # "timeRemaining":Ljava/lang/String;
    :cond_568
    const v27, 0x7f080485

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 376
    .local v15, "hostsDirections":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/airbnb/android/models/Reservation;->isAccepted()Z

    move-result v27

    if-eqz v27, :cond_596

    .line 377
    const v27, 0x7f080485

    invoke-virtual/range {v16 .. v16}, Lcom/airbnb/android/models/Listing;->getDirections()Ljava/lang/String;

    move-result-object v28

    const v29, 0x7f0e02c7

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v15, v1, v2, v3}, Lcom/airbnb/android/fragments/ROItineraryFragment;->setupTitleSubtitle(Landroid/view/View;ILjava/lang/String;I)V

    goto/16 :goto_3d6

    .line 380
    :cond_596
    const/16 v27, 0x8

    move/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3d6
.end method

.method private setupTitleSubtitle(Landroid/view/View;ILjava/lang/String;I)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewId"    # I
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "titleRes"    # I

    .prologue
    .line 506
    invoke-static {p1, p2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/GroupedCell;

    .line 508
    .local v0, "cell":Lcom/airbnb/android/views/GroupedCell;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 509
    invoke-virtual {v0, p3}, Lcom/airbnb/android/views/GroupedCell;->setContent(Ljava/lang/CharSequence;)V

    .line 510
    new-instance v1, Lcom/airbnb/android/fragments/ROItineraryFragment$16;

    invoke-direct {v1, p0, p4, p3}, Lcom/airbnb/android/fragments/ROItineraryFragment$16;-><init>(Lcom/airbnb/android/fragments/ROItineraryFragment;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 521
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCell;->setVisibility(I)V

    .line 525
    :goto_1b
    return-void

    .line 523
    :cond_1c
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCell;->setVisibility(I)V

    goto :goto_1b
.end method

.method private updateAdditionalCharges(Lcom/airbnb/android/views/GroupedCell;)V
    .registers 6
    .param p1, "additionalCharges"    # Lcom/airbnb/android/views/GroupedCell;

    .prologue
    .line 490
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Reservation;->getTripInvoice()Lcom/airbnb/android/models/TripInvoice;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 491
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Reservation;->getTripInvoice()Lcom/airbnb/android/models/TripInvoice;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/TripInvoice;->getConsumerTotalNative()F

    move-result v2

    float-to-double v0, v2

    .line 492
    .local v0, "additionalChargesTotal":D
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROItineraryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/utils/CurrencyHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/CurrencyHelper;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Lcom/airbnb/android/utils/CurrencyHelper;->formatNativeCurrency(DZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/airbnb/android/views/GroupedCell;->setContent(Ljava/lang/CharSequence;)V

    .line 494
    .end local v0    # "additionalChargesTotal":D
    :cond_23
    return-void
.end method

.method private updateArrivalPlanDetails(Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;Landroid/view/View;)V
    .registers 6
    .param p1, "arrivalPlan"    # Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 658
    invoke-virtual {p1}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->hasEstimatedArrivalTime()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 659
    invoke-virtual {p1}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getEtaLocalComponents()Lcom/airbnb/android/models/arrivalAssistant/EstimatedArrivalTime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/arrivalAssistant/EstimatedArrivalTime;->getFormattedString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/airbnb/android/fragments/ROItineraryFragment;->setEstimatedArrivalTime(Ljava/lang/String;)V

    .line 662
    :cond_11
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/ROItineraryFragment;->getArrivalTransportationDisplay(Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;)Ljava/lang/String;

    move-result-object v0

    .line 663
    .local v0, "displayString":Ljava/lang/String;
    const v1, 0x7f080056

    invoke-static {p2, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/AirTextView;

    if-eqz v0, :cond_3a

    .end local v0    # "displayString":Ljava/lang/String;
    :goto_20
    invoke-virtual {v1, v0}, Lcom/airbnb/android/views/AirTextView;->setText(Ljava/lang/CharSequence;)V

    .line 665
    const v1, 0x7f080055

    invoke-static {p2, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/airbnb/android/fragments/ROItineraryFragment$21;

    invoke-direct {v2, p0, p1}, Lcom/airbnb/android/fragments/ROItineraryFragment$21;-><init>(Lcom/airbnb/android/fragments/ROItineraryFragment;Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 674
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/StickyButton;->setVisibility(I)V

    .line 675
    return-void

    .line 663
    .restart local v0    # "displayString":Ljava/lang/String;
    :cond_3a
    const v2, 0x7f0e0016

    invoke-virtual {p0, v2}, Lcom/airbnb/android/fragments/ROItineraryFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_20
.end method

.method private updatePricing(Lcom/airbnb/android/views/GroupedCell;)V
    .registers 9
    .param p1, "reservationTotal"    # Lcom/airbnb/android/views/GroupedCell;

    .prologue
    const/4 v4, 0x1

    .line 462
    iget-object v5, p0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v5}, Lcom/airbnb/android/models/Reservation;->isAccepted()Z

    move-result v5

    if-nez v5, :cond_11

    iget-object v5, p0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v5}, Lcom/airbnb/android/models/Reservation;->isPending()Z

    move-result v5

    if-eqz v5, :cond_67

    :cond_11
    move v3, v4

    .line 463
    .local v3, "isAcceptedOrPending":Z
    :goto_12
    iget-boolean v5, p0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mHostMode:Z

    if-nez v5, :cond_20

    iget-object v5, p0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v5}, Lcom/airbnb/android/models/Reservation;->isLongTerm()Z

    move-result v5

    if-nez v5, :cond_6b

    if-eqz v3, :cond_6b

    .line 465
    :cond_20
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROItineraryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/airbnb/android/utils/CurrencyHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/CurrencyHelper;

    move-result-object v0

    .line 466
    .local v0, "currHelper":Lcom/airbnb/android/utils/CurrencyHelper;
    iget-object v5, p0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v5}, Lcom/airbnb/android/models/Reservation;->getPayoutPriceNative()I

    move-result v5

    int-to-double v5, v5

    invoke-virtual {v0, v5, v6, v4}, Lcom/airbnb/android/utils/CurrencyHelper;->formatNativeCurrency(DZ)Ljava/lang/String;

    move-result-object v2

    .line 467
    .local v2, "hostPayoutPrice":Ljava/lang/String;
    iget-object v5, p0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v5}, Lcom/airbnb/android/models/Reservation;->getTotalPrice()I

    move-result v5

    int-to-double v5, v5

    invoke-virtual {v0, v5, v6, v4}, Lcom/airbnb/android/utils/CurrencyHelper;->formatNativeCurrency(DZ)Ljava/lang/String;

    move-result-object v1

    .line 469
    .local v1, "guestPayPrice":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mHostMode:Z

    if-eqz v4, :cond_69

    move-object v4, v2

    :goto_43
    invoke-virtual {p1, v4}, Lcom/airbnb/android/views/GroupedCell;->setContent(Ljava/lang/CharSequence;)V

    .line 471
    iget-boolean v4, p0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mHostMode:Z

    if-eqz v4, :cond_66

    iget-object v4, p0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Reservation;->isAccepted()Z

    move-result v4

    if-nez v4, :cond_5a

    iget-object v4, p0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Reservation;->isPending()Z

    move-result v4

    if-eqz v4, :cond_66

    .line 472
    :cond_5a
    invoke-virtual {p1}, Lcom/airbnb/android/views/GroupedCell;->getTooltip()Lcom/airbnb/android/views/GroupedTooltip;

    move-result-object v4

    new-instance v5, Lcom/airbnb/android/fragments/ROItineraryFragment$15;

    invoke-direct {v5, p0, v2, v1}, Lcom/airbnb/android/fragments/ROItineraryFragment$15;-><init>(Lcom/airbnb/android/fragments/ROItineraryFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/GroupedTooltip;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 486
    .end local v0    # "currHelper":Lcom/airbnb/android/utils/CurrencyHelper;
    .end local v1    # "guestPayPrice":Ljava/lang/String;
    .end local v2    # "hostPayoutPrice":Ljava/lang/String;
    :cond_66
    :goto_66
    return-void

    .line 462
    .end local v3    # "isAcceptedOrPending":Z
    :cond_67
    const/4 v3, 0x0

    goto :goto_12

    .restart local v0    # "currHelper":Lcom/airbnb/android/utils/CurrencyHelper;
    .restart local v1    # "guestPayPrice":Ljava/lang/String;
    .restart local v2    # "hostPayoutPrice":Ljava/lang/String;
    .restart local v3    # "isAcceptedOrPending":Z
    :cond_69
    move-object v4, v1

    .line 469
    goto :goto_43

    .line 483
    .end local v0    # "currHelper":Lcom/airbnb/android/utils/CurrencyHelper;
    .end local v1    # "guestPayPrice":Ljava/lang/String;
    .end local v2    # "hostPayoutPrice":Ljava/lang/String;
    :cond_6b
    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Lcom/airbnb/android/views/GroupedCell;->setVisibility(I)V

    goto :goto_66
.end method

.method private updateSpecialOfferLink(Lcom/airbnb/android/views/GroupedCell;)V
    .registers 4
    .param p1, "specialOfferCell"    # Lcom/airbnb/android/views/GroupedCell;

    .prologue
    .line 434
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mHostMode:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Reservation;->isPending()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Reservation;->isAccepted()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 436
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/airbnb/android/views/GroupedCell;->setVisibility(I)V

    .line 437
    invoke-virtual {p1}, Lcom/airbnb/android/views/GroupedCell;->getTooltip()Lcom/airbnb/android/views/GroupedTooltip;

    move-result-object v0

    new-instance v1, Lcom/airbnb/android/fragments/ROItineraryFragment$13;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/ROItineraryFragment$13;-><init>(Lcom/airbnb/android/fragments/ROItineraryFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedTooltip;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 445
    new-instance v0, Lcom/airbnb/android/fragments/ROItineraryFragment$14;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/ROItineraryFragment$14;-><init>(Lcom/airbnb/android/fragments/ROItineraryFragment;)V

    invoke-virtual {p1, v0}, Lcom/airbnb/android/views/GroupedCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    :goto_2c
    return-void

    .line 454
    :cond_2d
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/airbnb/android/views/GroupedCell;->setVisibility(I)V

    goto :goto_2c
.end method


# virtual methods
.method public arrivalPlanUpdated(Lcom/airbnb/android/events/ArrivalPlanUpdatedEvent;)V
    .registers 4
    .param p1, "event"    # Lcom/airbnb/android/events/ArrivalPlanUpdatedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 698
    iget-object v0, p1, Lcom/airbnb/android/events/ArrivalPlanUpdatedEvent;->arrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->isNew()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 699
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROItineraryFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/ROItineraryFragment;->setupForNewArrivalPlan(Landroid/view/View;)V

    .line 703
    :goto_f
    return-void

    .line 701
    :cond_10
    iget-object v0, p1, Lcom/airbnb/android/events/ArrivalPlanUpdatedEvent;->arrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROItineraryFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/airbnb/android/fragments/ROItineraryFragment;->updateArrivalPlanDetails(Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;Landroid/view/View;)V

    goto :goto_f
.end method

.method public getFragmentLayout()I
    .registers 2

    .prologue
    .line 100
    const v0, 0x7f0301b3

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const/4 v0, -0x1

    .line 529
    sparse-switch p1, :sswitch_data_80

    .line 566
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/ROScrollViewFragmentBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 568
    :cond_8
    :goto_8
    return-void

    .line 531
    :sswitch_9
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v0

    new-instance v2, Lcom/airbnb/android/fragments/ROItineraryFragment$17;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/ROItineraryFragment$17;-><init>(Lcom/airbnb/android/fragments/ROItineraryFragment;)V

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/requests/UpdateReservationRequest;->forCancel(JLcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/UpdateReservationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/requests/UpdateReservationRequest;->execute()V

    goto :goto_8

    .line 551
    :sswitch_1c
    if-ne p2, v0, :cond_8

    .line 552
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROItineraryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    const-string/jumbo v0, "arrival_plan"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->intentForReservation(Landroid/content/Context;Lcom/airbnb/android/models/Reservation;Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/ROItineraryFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_8

    .line 557
    :sswitch_35
    if-ne p2, v0, :cond_8

    .line 558
    const-string/jumbo v0, "arrival_assistant"

    const/4 v1, 0x0

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "page"

    const-string/jumbo v4, "ro_itinerary"

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "section"

    const-string/jumbo v4, "aa_terms_modal_accept_button"

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "operation"

    const-string/jumbo v4, "click"

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 560
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROItineraryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/utils/SharedPrefsHelper;->acceptArrivalAssistantTerms(Landroid/content/Context;)V

    .line 561
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v0

    invoke-static {v0, v1, v5}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->trackReservationObjectAddTravelDetailsClick(JLcom/airbnb/android/utils/Strap;)V

    .line 562
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROItineraryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-static {v0, v1, v5}, Lcom/airbnb/android/activities/ArrivalDetailsActivity;->intentForReservation(Landroid/content/Context;Lcom/airbnb/android/models/Reservation;Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x1389

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/fragments/ROItineraryFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_8

    .line 529
    :sswitch_data_80
    .sparse-switch
        0x3e1 -> :sswitch_9
        0x3e9 -> :sswitch_35
        0x1389 -> :sswitch_1c
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/ROScrollViewFragmentBase;->onCreate(Landroid/os/Bundle;)V

    .line 106
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->register(Ljava/lang/Object;)V

    .line 107
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 111
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/ROScrollViewFragmentBase;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 113
    .local v1, "view":Landroid/view/View;
    invoke-static {p0, v1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 115
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mROFragmentInterface:Lcom/airbnb/android/interfaces/ROFragmentInterface;

    invoke-interface {v2}, Lcom/airbnb/android/interfaces/ROFragmentInterface;->getReservation()Lcom/airbnb/android/models/Reservation;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    .line 116
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mROFragmentInterface:Lcom/airbnb/android/interfaces/ROFragmentInterface;

    invoke-interface {v2}, Lcom/airbnb/android/interfaces/ROFragmentInterface;->getMessageThread()Lcom/airbnb/android/models/MessageThread;

    move-result-object v0

    .line 117
    .local v0, "messageThread":Lcom/airbnb/android/models/MessageThread;
    if-eqz v0, :cond_23

    .line 118
    invoke-virtual {v0}, Lcom/airbnb/android/models/MessageThread;->getMessageThreadStatus()Lcom/airbnb/android/models/ReservationStatus;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mThreadStatus:Lcom/airbnb/android/models/ReservationStatus;

    .line 119
    invoke-virtual {v0}, Lcom/airbnb/android/models/MessageThread;->getId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mThreadId:J

    .line 122
    :cond_23
    return-object v1
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 136
    invoke-super {p0}, Lcom/airbnb/android/fragments/ROScrollViewFragmentBase;->onDestroy()V

    .line 137
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->unregister(Ljava/lang/Object;)V

    .line 138
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 127
    invoke-super {p0}, Lcom/airbnb/android/fragments/ROScrollViewFragmentBase;->onStart()V

    .line 129
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-eqz v0, :cond_10

    .line 130
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROItineraryFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/airbnb/android/fragments/ROItineraryFragment;->setupReservation(Lcom/airbnb/android/models/Reservation;Landroid/view/View;)V

    .line 132
    :cond_10
    return-void
.end method
