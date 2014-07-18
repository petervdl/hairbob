.class public Lcom/airbnb/android/fragments/ArrivalDetailsFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "ArrivalDetailsFragment$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/fragments/ArrivalDetailsFragment;Ljava/lang/Object;)V
    .registers 6
    .param p0, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p1, "target"    # Lcom/airbnb/android/fragments/ArrivalDetailsFragment;
    .param p2, "source"    # Ljava/lang/Object;

    .prologue
    .line 10
    const v1, 0x7f080142

    const-string/jumbo v2, "field \'mSectionDepartureDateView\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    .local v0, "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mSectionDepartureDateView:Landroid/view/View;

    .line 12
    const v1, 0x7f080143

    const-string/jumbo v2, "field \'mSectionFlightInfoInputView\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    iput-object v0, p1, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mSectionFlightInfoInputView:Landroid/view/View;

    .line 14
    const v1, 0x7f080144

    const-string/jumbo v2, "field \'mSectionFlightInfoView\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    iput-object v0, p1, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mSectionFlightInfoView:Landroid/view/View;

    .line 16
    const v1, 0x7f080145

    const-string/jumbo v2, "field \'mSectionLocalTransportationView\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    iput-object v0, p1, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mSectionLocalTransportationView:Landroid/view/View;

    .line 18
    const v1, 0x7f080146

    const-string/jumbo v2, "field \'mSectionEstimatedArrival\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    iput-object v0, p1, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mSectionEstimatedArrival:Landroid/view/View;

    .line 20
    const v1, 0x7f080141

    const-string/jumbo v2, "field \'mSectionEnterEstimatedArrival\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    iput-object v0, p1, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mSectionEnterEstimatedArrival:Landroid/view/View;

    .line 22
    const v1, 0x7f0804c3

    const-string/jumbo v2, "field \'mFlightInfoContainerLinearLayout\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 23
    check-cast v0, Landroid/widget/LinearLayout;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mFlightInfoContainerLinearLayout:Landroid/widget/LinearLayout;

    .line 24
    const v1, 0x7f0804c4

    const-string/jumbo v2, "field \'mAirlineNameAutoCompleteTextView\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 25
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/AirAutoCompleteTextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineNameAutoCompleteTextView:Lcom/airbnb/android/views/AirAutoCompleteTextView;

    .line 26
    const v1, 0x7f0804c5

    const-string/jumbo v2, "field \'mAirlineFlightNumberEditText\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 27
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/EditText;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineFlightNumberEditText:Landroid/widget/EditText;

    .line 28
    const v1, 0x7f0804c9

    const-string/jumbo v2, "field \'mPlaneButton\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 29
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/Button;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mPlaneButton:Landroid/widget/Button;

    .line 30
    const v1, 0x7f0804ca

    const-string/jumbo v2, "field \'mCarButton\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 31
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/Button;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mCarButton:Landroid/widget/Button;

    .line 32
    const v1, 0x7f0804cb

    const-string/jumbo v2, "field \'mOtherButton\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 33
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/Button;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mOtherButton:Landroid/widget/Button;

    .line 34
    const v1, 0x7f0804c6

    const-string/jumbo v2, "field \'mTaxiButton\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 35
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/Button;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mTaxiButton:Landroid/widget/Button;

    .line 36
    const v1, 0x7f0804c7

    const-string/jumbo v2, "field \'mPublicTransportationButton\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 37
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/Button;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mPublicTransportationButton:Landroid/widget/Button;

    .line 38
    const v1, 0x7f0804c8

    const-string/jumbo v2, "field \'mOtherLocalButton\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 39
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/Button;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mOtherLocalButton:Landroid/widget/Button;

    .line 40
    const v1, 0x7f0804b5

    const-string/jumbo v2, "field \'mDepartureDateContainer\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 41
    .restart local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mDepartureDateContainer:Landroid/view/View;

    .line 42
    const v1, 0x7f0804b6

    const-string/jumbo v2, "field \'mEnterDateTextView\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 43
    check-cast v0, Lcom/airbnb/android/views/AirTextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mEnterDateTextView:Lcom/airbnb/android/views/AirTextView;

    .line 44
    const v1, 0x7f0804ba

    const-string/jumbo v2, "field \'mAirlineInfoContainer\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 45
    .restart local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineInfoContainer:Landroid/view/View;

    .line 46
    const v1, 0x7f0804c1

    const-string/jumbo v2, "field \'mAirlineInfoError\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 47
    check-cast v0, Lcom/airbnb/android/views/AirTextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineInfoError:Lcom/airbnb/android/views/AirTextView;

    .line 48
    const v1, 0x7f0804c2

    const-string/jumbo v2, "field \'mAirlineInfoLoader\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 49
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/LoaderFrame;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineInfoLoader:Lcom/airbnb/android/views/LoaderFrame;

    .line 50
    const v1, 0x7f0804bb

    const-string/jumbo v2, "field \'mDepartureAirportCodeTextView\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 51
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/AirTextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mDepartureAirportCodeTextView:Lcom/airbnb/android/views/AirTextView;

    .line 52
    const v1, 0x7f0804bc

    const-string/jumbo v2, "field \'mDepartureCityTextView\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 53
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/AirTextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mDepartureCityTextView:Lcom/airbnb/android/views/AirTextView;

    .line 54
    const v1, 0x7f0804bd

    const-string/jumbo v2, "field \'mDepartureTimeTextView\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 55
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/AirTextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mDepartureTimeTextView:Lcom/airbnb/android/views/AirTextView;

    .line 56
    const v1, 0x7f0804be

    const-string/jumbo v2, "field \'mArrivalAirportCodeTextView\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 57
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/AirTextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mArrivalAirportCodeTextView:Lcom/airbnb/android/views/AirTextView;

    .line 58
    const v1, 0x7f0804bf

    const-string/jumbo v2, "field \'mArrivalCityTextView\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 59
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/AirTextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mArrivalCityTextView:Lcom/airbnb/android/views/AirTextView;

    .line 60
    const v1, 0x7f0804c0

    const-string/jumbo v2, "field \'mArrivalTimeTextView\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 61
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/AirTextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mArrivalTimeTextView:Lcom/airbnb/android/views/AirTextView;

    .line 62
    const v1, 0x7f0804b7

    const-string/jumbo v2, "field \'mEstimatedArrivalTimeTextView\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 63
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/AirTextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mEstimatedArrivalTimeTextView:Lcom/airbnb/android/views/AirTextView;

    .line 64
    const v1, 0x7f0804b9

    const-string/jumbo v2, "field \'mEstimatedArrivalEditText\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 65
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/AirTextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mEstimatedArrivalEditText:Lcom/airbnb/android/views/AirTextView;

    .line 66
    const v1, 0x7f080147

    const-string/jumbo v2, "field \'mStickyButton\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 67
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/StickyButton;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    .line 68
    return-void
.end method

.method public static reset(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)V
    .registers 2
    .param p0, "target"    # Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    .prologue
    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mSectionDepartureDateView:Landroid/view/View;

    .line 72
    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mSectionFlightInfoInputView:Landroid/view/View;

    .line 73
    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mSectionFlightInfoView:Landroid/view/View;

    .line 74
    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mSectionLocalTransportationView:Landroid/view/View;

    .line 75
    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mSectionEstimatedArrival:Landroid/view/View;

    .line 76
    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mSectionEnterEstimatedArrival:Landroid/view/View;

    .line 77
    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mFlightInfoContainerLinearLayout:Landroid/widget/LinearLayout;

    .line 78
    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineNameAutoCompleteTextView:Lcom/airbnb/android/views/AirAutoCompleteTextView;

    .line 79
    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineFlightNumberEditText:Landroid/widget/EditText;

    .line 80
    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mPlaneButton:Landroid/widget/Button;

    .line 81
    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mCarButton:Landroid/widget/Button;

    .line 82
    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mOtherButton:Landroid/widget/Button;

    .line 83
    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mTaxiButton:Landroid/widget/Button;

    .line 84
    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mPublicTransportationButton:Landroid/widget/Button;

    .line 85
    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mOtherLocalButton:Landroid/widget/Button;

    .line 86
    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mDepartureDateContainer:Landroid/view/View;

    .line 87
    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mEnterDateTextView:Lcom/airbnb/android/views/AirTextView;

    .line 88
    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineInfoContainer:Landroid/view/View;

    .line 89
    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineInfoError:Lcom/airbnb/android/views/AirTextView;

    .line 90
    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineInfoLoader:Lcom/airbnb/android/views/LoaderFrame;

    .line 91
    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mDepartureAirportCodeTextView:Lcom/airbnb/android/views/AirTextView;

    .line 92
    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mDepartureCityTextView:Lcom/airbnb/android/views/AirTextView;

    .line 93
    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mDepartureTimeTextView:Lcom/airbnb/android/views/AirTextView;

    .line 94
    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mArrivalAirportCodeTextView:Lcom/airbnb/android/views/AirTextView;

    .line 95
    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mArrivalCityTextView:Lcom/airbnb/android/views/AirTextView;

    .line 96
    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mArrivalTimeTextView:Lcom/airbnb/android/views/AirTextView;

    .line 97
    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mEstimatedArrivalTimeTextView:Lcom/airbnb/android/views/AirTextView;

    .line 98
    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mEstimatedArrivalEditText:Lcom/airbnb/android/views/AirTextView;

    .line 99
    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    .line 100
    return-void
.end method
