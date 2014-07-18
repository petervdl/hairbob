.class public Lcom/airbnb/android/fragments/ArrivalTrackerFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "ArrivalTrackerFragment$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/fragments/ArrivalTrackerFragment;Ljava/lang/Object;)V
    .registers 6
    .param p0, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p1, "target"    # Lcom/airbnb/android/fragments/ArrivalTrackerFragment;
    .param p2, "source"    # Ljava/lang/Object;

    .prologue
    .line 10
    const v1, 0x7f080095

    const-string/jumbo v2, "field \'mMapView\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    .local v0, "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/AirMapView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mMapView:Lcom/airbnb/android/views/AirMapView;

    .line 12
    const v1, 0x7f080058

    const-string/jumbo v2, "field \'mStartTimelineView\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/TimelineView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mStartTimelineView:Lcom/airbnb/android/views/TimelineView;

    .line 14
    const v1, 0x7f080059

    const-string/jumbo v2, "field \'mTimelineFlightContainer\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/LinearLayout;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mTimelineFlightContainer:Landroid/widget/LinearLayout;

    .line 16
    const v1, 0x7f08005a

    const-string/jumbo v2, "field \'mDepartureAirportTimelineView\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/TimelineView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mDepartureAirportTimelineView:Lcom/airbnb/android/views/TimelineView;

    .line 18
    const v1, 0x7f08005b

    const-string/jumbo v2, "field \'mPlaneTimelineView\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/TimelineView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mPlaneTimelineView:Lcom/airbnb/android/views/TimelineView;

    .line 20
    const v1, 0x7f08005c

    const-string/jumbo v2, "field \'mArrivalAirportTimelineView\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/TimelineView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mArrivalAirportTimelineView:Lcom/airbnb/android/views/TimelineView;

    .line 22
    const v1, 0x7f08005d

    const-string/jumbo v2, "field \'mCarTimelineView\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 23
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/TimelineView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mCarTimelineView:Lcom/airbnb/android/views/TimelineView;

    .line 24
    const v1, 0x7f08005e

    const-string/jumbo v2, "field \'mOtherTimelineView\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 25
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/TimelineView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mOtherTimelineView:Lcom/airbnb/android/views/TimelineView;

    .line 26
    const v1, 0x7f08005f

    const-string/jumbo v2, "field \'mLocalTransportationTimelineView\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 27
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/TimelineView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mLocalTransportationTimelineView:Lcom/airbnb/android/views/TimelineView;

    .line 28
    const v1, 0x7f080060

    const-string/jumbo v2, "field \'mDestinationTimelineView\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 29
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/TimelineView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mDestinationTimelineView:Lcom/airbnb/android/views/TimelineView;

    .line 30
    const v1, 0x7f080147

    const-string/jumbo v2, "field \'mStickyButton\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 31
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/StickyButton;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    .line 32
    return-void
.end method

.method public static reset(Lcom/airbnb/android/fragments/ArrivalTrackerFragment;)V
    .registers 2
    .param p0, "target"    # Lcom/airbnb/android/fragments/ArrivalTrackerFragment;

    .prologue
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mMapView:Lcom/airbnb/android/views/AirMapView;

    .line 36
    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mStartTimelineView:Lcom/airbnb/android/views/TimelineView;

    .line 37
    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mTimelineFlightContainer:Landroid/widget/LinearLayout;

    .line 38
    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mDepartureAirportTimelineView:Lcom/airbnb/android/views/TimelineView;

    .line 39
    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mPlaneTimelineView:Lcom/airbnb/android/views/TimelineView;

    .line 40
    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mArrivalAirportTimelineView:Lcom/airbnb/android/views/TimelineView;

    .line 41
    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mCarTimelineView:Lcom/airbnb/android/views/TimelineView;

    .line 42
    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mOtherTimelineView:Lcom/airbnb/android/views/TimelineView;

    .line 43
    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mLocalTransportationTimelineView:Lcom/airbnb/android/views/TimelineView;

    .line 44
    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mDestinationTimelineView:Lcom/airbnb/android/views/TimelineView;

    .line 45
    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    .line 46
    return-void
.end method
