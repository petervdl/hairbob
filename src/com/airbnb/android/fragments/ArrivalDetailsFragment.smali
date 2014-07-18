.class public Lcom/airbnb/android/fragments/ArrivalDetailsFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "ArrivalDetailsFragment.java"

# interfaces
.implements Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;


# static fields
.field private static final CONFIRM_DIALOG_CANCEL:I = 0xfa1

.field private static final CONFIRM_DIALOG_OK:I = 0xfa2

.field private static final DATE_PICKER:Ljava/lang/String; = "date_picker"

.field private static final DIALOG_CONFIRM:Ljava/lang/String; = "dialog_confirm"

.field private static final DIALOG_ERROR:Ljava/lang/String; = "dialog_error"

.field private static final EXTRA_ARRIVAL_PLAN:Ljava/lang/String; = "arrival_plan"

.field private static final EXTRA_RESERVATION:Ljava/lang/String; = "reservation"

.field private static final FLIGHT_NUMBER_REQUEST_DELAY_MILLIS:I = 0x3e8

.field private static final GEOFENCE_AIRPORT_RADIUS:F = 5000.0f

.field private static final GEOFENCE_EXPIRATION_BUFFER_DURATION:J = 0x5265c00L

.field private static final GEOFENCE_LISTING_RADIUS:F = 100.0f

.field private static final TIME_PICKER:Ljava/lang/String; = "time_picker"


# instance fields
.field private mAirline:Lcom/airbnb/android/models/arrivalAssistant/Airline;

.field private mAirlineCarriersRequest:Lcom/airbnb/android/requests/AirlineCarriersRequest;

.field private mAirlineFlightNumber:Ljava/lang/Integer;

.field mAirlineFlightNumberEditText:Landroid/widget/EditText;

.field mAirlineInfoContainer:Landroid/view/View;

.field mAirlineInfoError:Lcom/airbnb/android/views/AirTextView;

.field mAirlineInfoLoader:Lcom/airbnb/android/views/LoaderFrame;

.field mAirlineNameAutoCompleteTextView:Lcom/airbnb/android/views/AirAutoCompleteTextView;

.field mArrivalAirportCodeTextView:Lcom/airbnb/android/views/AirTextView;

.field mArrivalCityTextView:Lcom/airbnb/android/views/AirTextView;

.field private mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

.field mArrivalTimeTextView:Lcom/airbnb/android/views/AirTextView;

.field mCarButton:Landroid/widget/Button;

.field mDepartureAirportCodeTextView:Lcom/airbnb/android/views/AirTextView;

.field mDepartureCityTextView:Lcom/airbnb/android/views/AirTextView;

.field private mDepartureDate:Ljava/util/Calendar;

.field mDepartureDateContainer:Landroid/view/View;

.field mDepartureTimeTextView:Lcom/airbnb/android/views/AirTextView;

.field mEnterDateTextView:Lcom/airbnb/android/views/AirTextView;

.field mEstimatedArrivalEditText:Lcom/airbnb/android/views/AirTextView;

.field private mEstimatedArrivalHour:Ljava/lang/Integer;

.field private mEstimatedArrivalMinute:Ljava/lang/Integer;

.field private mEstimatedArrivalTime:Ljava/lang/String;

.field mEstimatedArrivalTimeTextView:Lcom/airbnb/android/views/AirTextView;

.field mFlightInfoContainerLinearLayout:Landroid/widget/LinearLayout;

.field private mGeofencePendingIntent:Landroid/app/PendingIntent;

.field private mGeofenceRequestInProgress:Z

.field private mHandler:Landroid/os/Handler;

.field private mLocalTransportationMode:Lcom/airbnb/android/models/arrivalAssistant/Transportation;

.field private mLocationClient:Lcom/google/android/gms/location/LocationClient;

.field mOtherButton:Landroid/widget/Button;

.field mOtherLocalButton:Landroid/widget/Button;

.field mPlaneButton:Landroid/widget/Button;

.field mPublicTransportationButton:Landroid/widget/Button;

.field private mReservation:Lcom/airbnb/android/models/Reservation;

.field mSectionDepartureDateView:Landroid/view/View;

.field mSectionEnterEstimatedArrival:Landroid/view/View;

.field mSectionEstimatedArrival:Landroid/view/View;

.field mSectionFlightInfoInputView:Landroid/view/View;

.field mSectionFlightInfoView:Landroid/view/View;

.field mSectionLocalTransportationView:Landroid/view/View;

.field mStickyButton:Lcom/airbnb/android/views/StickyButton;

.field mTaxiButton:Landroid/widget/Button;

.field private mTransportationMode:Lcom/airbnb/android/models/arrivalAssistant/Transportation;

.field private mUpdateTravelSummaryRequest:Lcom/airbnb/android/requests/UpdateTravelSummaryRequest;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)Lcom/airbnb/android/models/Reservation;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)Lcom/airbnb/android/models/arrivalAssistant/Transportation;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mTransportationMode:Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;I)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ArrivalDetailsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->showErrorDialog(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;Lcom/airbnb/android/models/arrivalAssistant/Transportation;)Lcom/airbnb/android/models/arrivalAssistant/Transportation;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ArrivalDetailsFragment;
    .param p1, "x1"    # Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mTransportationMode:Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)Ljava/util/Calendar;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mDepartureDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;)Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ArrivalDetailsFragment;
    .param p1, "x1"    # Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->clearVisibilityState()V

    return-void
.end method

.method static synthetic access$1400(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->clearEstimatedArrivalTime()V

    return-void
.end method

.method static synthetic access$1500(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)Lcom/airbnb/android/models/arrivalAssistant/Transportation;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mLocalTransportationMode:Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;Lcom/airbnb/android/models/arrivalAssistant/Transportation;)Lcom/airbnb/android/models/arrivalAssistant/Transportation;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ArrivalDetailsFragment;
    .param p1, "x1"    # Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mLocalTransportationMode:Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)Ljava/lang/Integer;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mEstimatedArrivalHour:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ArrivalDetailsFragment;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mEstimatedArrivalHour:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)Ljava/lang/Integer;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mEstimatedArrivalMinute:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ArrivalDetailsFragment;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mEstimatedArrivalMinute:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->setEstimatedArrivalTime()V

    return-void
.end method

.method static synthetic access$1900(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->clearLocalTransportationButtons()V

    return-void
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->startAddGeofenceRequest()V

    return-void
.end method

.method static synthetic access$2000(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->handleUpdatedArrivalPlan()V

    return-void
.end method

.method static synthetic access$2100(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->addGeofences()V

    return-void
.end method

.method static synthetic access$2202(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ArrivalDetailsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mGeofenceRequestInProgress:Z

    return p1
.end method

.method static synthetic access$2302(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;Lcom/google/android/gms/location/LocationClient;)Lcom/google/android/gms/location/LocationClient;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ArrivalDetailsFragment;
    .param p1, "x1"    # Lcom/google/android/gms/location/LocationClient;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mLocationClient:Lcom/google/android/gms/location/LocationClient;

    return-object p1
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->finishAndStartArrivalTracker()V

    return-void
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)Lcom/airbnb/android/models/arrivalAssistant/Airline;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirline:Lcom/airbnb/android/models/arrivalAssistant/Airline;

    return-object v0
.end method

.method static synthetic access$402(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;Lcom/airbnb/android/models/arrivalAssistant/Airline;)Lcom/airbnb/android/models/arrivalAssistant/Airline;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ArrivalDetailsFragment;
    .param p1, "x1"    # Lcom/airbnb/android/models/arrivalAssistant/Airline;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirline:Lcom/airbnb/android/models/arrivalAssistant/Airline;

    return-object p1
.end method

.method static synthetic access$500(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)Lcom/airbnb/android/requests/AirlineCarriersRequest;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineCarriersRequest:Lcom/airbnb/android/requests/AirlineCarriersRequest;

    return-object v0
.end method

.method static synthetic access$502(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;Lcom/airbnb/android/requests/AirlineCarriersRequest;)Lcom/airbnb/android/requests/AirlineCarriersRequest;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ArrivalDetailsFragment;
    .param p1, "x1"    # Lcom/airbnb/android/requests/AirlineCarriersRequest;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineCarriersRequest:Lcom/airbnb/android/requests/AirlineCarriersRequest;

    return-object p1
.end method

.method static synthetic access$600(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)Ljava/lang/Integer;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineFlightNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$602(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ArrivalDetailsFragment;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineFlightNumber:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$700(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ArrivalDetailsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->showAirlineLoader(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->updateTravelSummary()V

    return-void
.end method

.method static synthetic access$900(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addGeofences()V
    .registers 10

    .prologue
    .line 809
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 812
    .local v8, "geofenceList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/location/Geofence;>;"
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getPrimaryArrival()Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;->getArrivalAirport()Lcom/airbnb/android/models/arrivalAssistant/Airport;

    move-result-object v7

    .line 813
    .local v7, "airport":Lcom/airbnb/android/models/arrivalAssistant/Airport;
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Reservation;->getConfirmationCode()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v7}, Lcom/airbnb/android/models/arrivalAssistant/Airport;->getLat()F

    move-result v0

    float-to-double v3, v0

    invoke-virtual {v7}, Lcom/airbnb/android/models/arrivalAssistant/Airport;->getLng()F

    move-result v0

    float-to-double v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->createGeofence(Ljava/lang/String;ZDD)Lcom/google/android/gms/location/Geofence;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 816
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Reservation;->getConfirmationCode()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Reservation;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getLatitude()D

    move-result-wide v3

    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Reservation;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getLongitude()D

    move-result-wide v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->createGeofence(Ljava/lang/String;ZDD)Lcom/google/android/gms/location/Geofence;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 818
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->getArrivalTrackerServicePendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mGeofencePendingIntent:Landroid/app/PendingIntent;

    .line 819
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mLocationClient:Lcom/google/android/gms/location/LocationClient;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mGeofencePendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v8, v1, p0}, Lcom/google/android/gms/location/LocationClient;->addGeofences(Ljava/util/List;Landroid/app/PendingIntent;Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;)V

    .line 821
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v0

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "airport_lat"

    invoke-virtual {v7}, Lcom/airbnb/android/models/arrivalAssistant/Airport;->getLat()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;F)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "airport_lng"

    invoke-virtual {v7}, Lcom/airbnb/android/models/arrivalAssistant/Airport;->getLng()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;F)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "listing_lat"

    iget-object v4, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Reservation;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;D)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "listing_lng"

    iget-object v4, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Reservation;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;D)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "expiration_date"

    iget-object v4, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Reservation;->getCheckinDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;J)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->trackTravelDetailsAddGeofence(JLcom/airbnb/android/utils/Strap;)V

    .line 826
    return-void
.end method

.method private clearAllDetails()V
    .registers 5

    .prologue
    .line 702
    new-instance v0, Lcom/airbnb/android/requests/ClearArrivalDetailsRequest;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Reservation;->getConfirmationCode()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$10;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$10;-><init>(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/requests/ClearArrivalDetailsRequest;-><init>(Ljava/lang/String;ZLcom/airbnb/android/requests/RequestListener;)V

    .line 716
    .local v0, "request":Lcom/airbnb/android/requests/ClearArrivalDetailsRequest;
    invoke-virtual {v0, p0}, Lcom/airbnb/android/requests/ClearArrivalDetailsRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 717
    return-void
.end method

.method private clearEstimatedArrivalTime()V
    .registers 5

    .prologue
    .line 720
    new-instance v0, Lcom/airbnb/android/requests/ClearArrivalDetailsRequest;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Reservation;->getConfirmationCode()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$11;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$11;-><init>(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/requests/ClearArrivalDetailsRequest;-><init>(Ljava/lang/String;ZLcom/airbnb/android/requests/RequestListener;)V

    .line 738
    .local v0, "request":Lcom/airbnb/android/requests/ClearArrivalDetailsRequest;
    invoke-virtual {v0, p0}, Lcom/airbnb/android/requests/ClearArrivalDetailsRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 739
    return-void
.end method

.method private clearLocalTransportationButtons()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 411
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mTaxiButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 412
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mPublicTransportationButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 413
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mOtherLocalButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 414
    return-void
.end method

.method private clearVisibilityState()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 397
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mPlaneButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 398
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mCarButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 399
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mOtherButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 400
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->clearLocalTransportationButtons()V

    .line 402
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mSectionDepartureDateView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mSectionFlightInfoInputView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mSectionFlightInfoView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mSectionLocalTransportationView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mSectionEstimatedArrival:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mSectionEnterEstimatedArrival:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 408
    return-void
.end method

.method private createCurrentTravelSummaryParams()Lcom/airbnb/android/utils/Strap;
    .registers 4

    .prologue
    .line 484
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 486
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "confirmation_code"

    iget-object v2, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Reservation;->getConfirmationCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    .line 488
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mTransportationMode:Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    if-eqz v1, :cond_20

    .line 489
    const-string/jumbo v1, "transportation_type"

    iget-object v2, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mTransportationMode:Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    invoke-virtual {v2}, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->getTransportationTypeParam()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    .line 492
    :cond_20
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mLocalTransportationMode:Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    if-eqz v1, :cond_30

    .line 493
    const-string/jumbo v1, "secondary_transportation_type"

    iget-object v2, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mLocalTransportationMode:Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    invoke-virtual {v2}, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->getTransportationTypeParam()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    .line 496
    :cond_30
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mDepartureDate:Ljava/util/Calendar;

    if-eqz v1, :cond_44

    .line 497
    const-string/jumbo v1, "departure_date"

    iget-object v2, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mDepartureDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/utils/DateHelper;->getStringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    .line 500
    :cond_44
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirline:Lcom/airbnb/android/models/arrivalAssistant/Airline;

    if-eqz v1, :cond_60

    .line 501
    const-string/jumbo v1, "carrier_code"

    iget-object v2, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirline:Lcom/airbnb/android/models/arrivalAssistant/Airline;

    invoke-virtual {v2}, Lcom/airbnb/android/models/arrivalAssistant/Airline;->getIata()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    .line 502
    const-string/jumbo v1, "carrier_name"

    iget-object v2, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirline:Lcom/airbnb/android/models/arrivalAssistant/Airline;

    invoke-virtual {v2}, Lcom/airbnb/android/models/arrivalAssistant/Airline;->getAirline()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    .line 505
    :cond_60
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineFlightNumber:Ljava/lang/Integer;

    if-eqz v1, :cond_74

    .line 506
    const-string/jumbo v1, "carrier_route"

    iget-object v2, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineFlightNumber:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    .line 509
    :cond_74
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mEstimatedArrivalHour:Ljava/lang/Integer;

    if-eqz v1, :cond_9c

    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mEstimatedArrivalMinute:Ljava/lang/Integer;

    if-eqz v1, :cond_9c

    .line 510
    const-string/jumbo v1, "arrival_hour"

    iget-object v2, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mEstimatedArrivalHour:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    .line 511
    const-string/jumbo v1, "arrival_minute"

    iget-object v2, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mEstimatedArrivalMinute:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    .line 514
    :cond_9c
    return-object v0
.end method

.method private createGeofence(Ljava/lang/String;ZDD)Lcom/google/android/gms/location/Geofence;
    .registers 16
    .param p1, "confirmationCode"    # Ljava/lang/String;
    .param p2, "airport"    # Z
    .param p3, "lat"    # D
    .param p5, "lng"    # D

    .prologue
    .line 846
    if-eqz p2, :cond_4e

    const v5, 0x459c4000

    .line 847
    .local v5, "radius":F
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_51

    const-string/jumbo v0, "-airport"

    :goto_13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 849
    .local v6, "id":Ljava/lang/String;
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Reservation;->getCheckinDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    add-long v7, v0, v2

    .line 851
    .local v7, "timeUntilExpiration":J
    new-instance v0, Lcom/google/android/gms/location/Geofence$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/location/Geofence$Builder;-><init>()V

    invoke-virtual {v0, v6}, Lcom/google/android/gms/location/Geofence$Builder;->setRequestId(Ljava/lang/String;)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object v1

    if-eqz p2, :cond_55

    const/4 v0, 0x2

    :goto_3b
    invoke-virtual {v1, v0}, Lcom/google/android/gms/location/Geofence$Builder;->setTransitionTypes(I)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object v0

    move-wide v1, p3

    move-wide v3, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/location/Geofence$Builder;->setCircularRegion(DDF)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Lcom/google/android/gms/location/Geofence$Builder;->setExpirationDuration(J)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/Geofence$Builder;->build()Lcom/google/android/gms/location/Geofence;

    move-result-object v0

    return-object v0

    .line 846
    .end local v5    # "radius":F
    .end local v6    # "id":Ljava/lang/String;
    .end local v7    # "timeUntilExpiration":J
    :cond_4e
    const/high16 v5, 0x42c80000

    goto :goto_5

    .line 847
    .restart local v5    # "radius":F
    :cond_51
    const-string/jumbo v0, "-listing"

    goto :goto_13

    .line 851
    .restart local v6    # "id":Ljava/lang/String;
    .restart local v7    # "timeUntilExpiration":J
    :cond_55
    const/4 v0, 0x1

    goto :goto_3b
.end method

.method private finishAndStartArrivalTracker()V
    .registers 4

    .prologue
    .line 776
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 777
    .local v0, "result":Landroid/content/Intent;
    const-string/jumbo v1, "arrival_plan"

    iget-object v2, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 778
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 779
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 780
    return-void
.end method

.method private getArrivalTrackerServicePendingIntent()Landroid/app/PendingIntent;
    .registers 7

    .prologue
    .line 829
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Reservation;->getConfirmationCode()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/airbnb/android/services/ArrivalTrackerService;->intentForConfirmationCode(Landroid/content/Context;Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    .line 830
    .local v0, "geofenceIntent":Landroid/content/Intent;
    const-string/jumbo v2, "geofence_arrival_tracker"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 832
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 833
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    return-object v1
.end method

.method private handleUpdatedArrivalPlan()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 751
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mSectionFlightInfoInputView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3f

    .line 752
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->hasFlightDetails(Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 753
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->showFlightInfo(Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;)V

    .line 761
    :goto_18
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getSecondaryTransportationType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->getTransportationFromParam(Ljava/lang/String;Z)Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mLocalTransportationMode:Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    .line 762
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mLocalTransportationMode:Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    if-eqz v0, :cond_3f

    .line 763
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mTransportationMode:Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    invoke-virtual {v1}, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->getButtonId()I

    move-result v1

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 764
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->setEstimatedArrivalTime()V

    .line 768
    :cond_3f
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getEtaLocalComponents()Lcom/airbnb/android/models/arrivalAssistant/EstimatedArrivalTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/EstimatedArrivalTime;->getFormattedString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 769
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mEstimatedArrivalEditText:Lcom/airbnb/android/views/AirTextView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v1}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getEtaLocalComponents()Lcom/airbnb/android/models/arrivalAssistant/EstimatedArrivalTime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/arrivalAssistant/EstimatedArrivalTime;->getFormattedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/AirTextView;->setText(Ljava/lang/CharSequence;)V

    .line 772
    :cond_5e
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->showStickyButtonIfComplete()V

    .line 773
    return-void

    .line 755
    :cond_62
    invoke-direct {p0, v1}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->showAirlineLoader(Z)V

    .line 756
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineInfoError:Lcom/airbnb/android/views/AirTextView;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/AirTextView;->setVisibility(I)V

    .line 757
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 758
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mSectionFlightInfoView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_18
.end method

.method private hasFlightDetails(Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;)Z
    .registers 3
    .param p1, "arrivalPlan"    # Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    .prologue
    .line 567
    invoke-virtual {p1}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getPrimaryArrival()Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getPrimaryArrival()Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;->getFlight()Lcom/airbnb/android/models/arrivalAssistant/Flight;

    move-result-object v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static newInstance(Lcom/airbnb/android/models/Reservation;Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;)Lcom/airbnb/android/fragments/ArrivalDetailsFragment;
    .registers 5
    .param p0, "reservation"    # Lcom/airbnb/android/models/Reservation;
    .param p1, "arrivalPlan"    # Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    .prologue
    .line 133
    new-instance v1, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;-><init>()V

    .line 134
    .local v1, "fragment":Lcom/airbnb/android/fragments/ArrivalDetailsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 135
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "reservation"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 136
    const-string/jumbo v2, "arrival_plan"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 137
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 138
    return-object v1
.end method

.method private populateCurrentArrivalPlan(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 589
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getTransportationType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->getTransportationFromParam(Ljava/lang/String;Z)Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mTransportationMode:Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    .line 590
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getSecondaryTransportationType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->getTransportationFromParam(Ljava/lang/String;Z)Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mLocalTransportationMode:Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    .line 592
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mTransportationMode:Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    if-eqz v0, :cond_cd

    .line 593
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mTransportationMode:Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->getButtonId()I

    move-result v0

    invoke-static {p1, v0}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 595
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mTransportationMode:Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    sget-object v1, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->PLANE:Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    if-ne v0, v1, :cond_ce

    .line 596
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mSectionDepartureDateView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 597
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mSectionEnterEstimatedArrival:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 600
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getDepartureDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 601
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mDepartureDate:Ljava/util/Calendar;

    .line 602
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mDepartureDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v1}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getDepartureDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 603
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->setDepartureDate()V

    .line 605
    :cond_5b
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mLocalTransportationMode:Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    if-eqz v0, :cond_6e

    .line 606
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mLocalTransportationMode:Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->getButtonId()I

    move-result v0

    invoke-static {p1, v0}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 609
    :cond_6e
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getCarrierCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9e

    .line 610
    new-instance v0, Lcom/airbnb/android/models/arrivalAssistant/Airline;

    invoke-direct {v0}, Lcom/airbnb/android/models/arrivalAssistant/Airline;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirline:Lcom/airbnb/android/models/arrivalAssistant/Airline;

    .line 611
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirline:Lcom/airbnb/android/models/arrivalAssistant/Airline;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v1}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getCarrierName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/arrivalAssistant/Airline;->setAirline(Ljava/lang/String;)V

    .line 612
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirline:Lcom/airbnb/android/models/arrivalAssistant/Airline;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v1}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getCarrierCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/arrivalAssistant/Airline;->setIata(Ljava/lang/String;)V

    .line 613
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineNameAutoCompleteTextView:Lcom/airbnb/android/views/AirAutoCompleteTextView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirline:Lcom/airbnb/android/models/arrivalAssistant/Airline;

    invoke-virtual {v1}, Lcom/airbnb/android/models/arrivalAssistant/Airline;->getAirline()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/AirAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    :cond_9e
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getCarrierRoute()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_bd

    .line 617
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getCarrierRoute()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineFlightNumber:Ljava/lang/Integer;

    .line 618
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineFlightNumberEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineFlightNumber:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 621
    :cond_bd
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->hasFlightDetails(Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;)Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 622
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->showFlightInfo(Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;)V

    .line 629
    :cond_ca
    :goto_ca
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->setEstimatedArrivalTime()V

    .line 631
    :cond_cd
    return-void

    .line 625
    :cond_ce
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mSectionDepartureDateView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 626
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mSectionEnterEstimatedArrival:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_ca
.end method

.method private setDepartureDate()V
    .registers 5

    .prologue
    .line 634
    new-instance v1, Ljava/text/SimpleDateFormat;

    const v2, 0x7f0e0293

    invoke-virtual {p0, v2}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 635
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    iget-object v2, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mDepartureDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, "dateString":Ljava/lang/String;
    iget-object v2, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mEnterDateTextView:Lcom/airbnb/android/views/AirTextView;

    invoke-virtual {v2, v0}, Lcom/airbnb/android/views/AirTextView;->setText(Ljava/lang/CharSequence;)V

    .line 637
    iget-object v2, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mSectionFlightInfoInputView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 638
    return-void
.end method

.method private setEstimatedArrivalFromPicker(II)V
    .registers 9
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/android/utils/DateHelper;->is24Hour(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 660
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "H:mm"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 665
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    :goto_12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mEstimatedArrivalHour:Ljava/lang/Integer;

    .line 666
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mEstimatedArrivalMinute:Ljava/lang/Integer;

    .line 668
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 669
    .local v1, "time":Ljava/util/Calendar;
    const/16 v3, 0xb

    invoke-virtual {v1, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 670
    const/16 v3, 0xc

    invoke-virtual {v1, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 672
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "AM"

    const-string/jumbo v5, "am"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "PM"

    const-string/jumbo v5, "pm"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 673
    .local v2, "timeString":Ljava/lang/String;
    iget-object v3, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mEstimatedArrivalEditText:Lcom/airbnb/android/views/AirTextView;

    invoke-virtual {v3, v2}, Lcom/airbnb/android/views/AirTextView;->setText(Ljava/lang/CharSequence;)V

    .line 674
    iget-object v3, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mEstimatedArrivalTimeTextView:Lcom/airbnb/android/views/AirTextView;

    invoke-virtual {v3, v2}, Lcom/airbnb/android/views/AirTextView;->setText(Ljava/lang/CharSequence;)V

    .line 675
    return-void

    .line 662
    .end local v0    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v1    # "time":Ljava/util/Calendar;
    .end local v2    # "timeString":Ljava/lang/String;
    :cond_53
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "h:mmaa"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v0    # "sdf":Ljava/text/SimpleDateFormat;
    goto :goto_12
.end method

.method private setEstimatedArrivalTime()V
    .registers 3

    .prologue
    .line 641
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->hasEstimatedArrivalTime()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 642
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getEtaLocalComponents()Lcom/airbnb/android/models/arrivalAssistant/EstimatedArrivalTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/EstimatedArrivalTime;->getFormattedString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mEstimatedArrivalTime:Ljava/lang/String;

    .line 644
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mTransportationMode:Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    sget-object v1, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->CAR:Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    if-eq v0, v1, :cond_20

    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mTransportationMode:Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    sget-object v1, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->OTHER:Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    if-ne v0, v1, :cond_2f

    .line 645
    :cond_20
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mSectionEstimatedArrival:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 646
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mEstimatedArrivalEditText:Lcom/airbnb/android/views/AirTextView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mEstimatedArrivalTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/AirTextView;->setText(Ljava/lang/CharSequence;)V

    .line 655
    :cond_2e
    :goto_2e
    return-void

    .line 648
    :cond_2f
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mLocalTransportationMode:Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    if-eqz v0, :cond_2e

    .line 650
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mSectionEstimatedArrival:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 651
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mEstimatedArrivalTimeTextView:Lcom/airbnb/android/views/AirTextView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mEstimatedArrivalTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/AirTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2e
.end method

.method private setLocalTransportationButtonListener(Landroid/widget/Button;)V
    .registers 3
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    .line 467
    new-instance v0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$8;

    invoke-direct {v0, p0, p1}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$8;-><init>(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;Landroid/widget/Button;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 481
    return-void
.end method

.method private setTransportationButtonDrawable(Landroid/widget/Button;I)V
    .registers 8
    .param p1, "btn"    # Landroid/widget/Button;
    .param p2, "blackDrawableId"    # I

    .prologue
    const v4, 0x7f0a000f

    const/4 v3, 0x0

    .line 264
    const v1, 0x7f0a0019

    const v2, 0x7f0a001a

    invoke-static {p2, v1, v2, v4, v4}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdWithColors(IIIII)Lcom/airbnb/android/utils/ColorizedDrawable;

    move-result-object v0

    .line 269
    .local v0, "drawable":Lcom/airbnb/android/utils/ColorizedDrawable;
    invoke-virtual {p1, v3, v0, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 270
    return-void
.end method

.method private setTransportationButtonListener(Landroid/widget/Button;Z)V
    .registers 4
    .param p1, "button"    # Landroid/widget/Button;
    .param p2, "showDepartureTime"    # Z

    .prologue
    .line 417
    new-instance v0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$7;-><init>(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;Landroid/widget/Button;Z)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    return-void
.end method

.method private setupDepartureTime()V
    .registers 3

    .prologue
    .line 372
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mDepartureDateContainer:Landroid/view/View;

    new-instance v1, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$5;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$5;-><init>(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    return-void
.end method

.method private setupEstimatedArrivalEdit()V
    .registers 3

    .prologue
    .line 383
    new-instance v0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$6;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$6;-><init>(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)V

    .line 392
    .local v0, "onClickListener":Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mSectionEnterEstimatedArrival:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mSectionEstimatedArrival:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    return-void
.end method

.method private setupFlightInfoViews()V
    .registers 5

    .prologue
    .line 273
    new-instance v1, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$2;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$2;-><init>(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)V

    .line 316
    .local v1, "airlineNameTextWatcher":Landroid/text/TextWatcher;
    iget-object v2, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineNameAutoCompleteTextView:Lcom/airbnb/android/views/AirAutoCompleteTextView;

    invoke-virtual {v2, v1}, Lcom/airbnb/android/views/AirAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 317
    iget-object v2, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineNameAutoCompleteTextView:Lcom/airbnb/android/views/AirAutoCompleteTextView;

    new-instance v3, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$3;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$3;-><init>(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)V

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/AirAutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 331
    new-instance v0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$4;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$4;-><init>(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)V

    .line 368
    .local v0, "airlineFlightNumberTextWatcher":Landroid/text/TextWatcher;
    iget-object v2, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineFlightNumberEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 369
    return-void
.end method

.method private setupTransportationButtons()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 248
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mPlaneButton:Landroid/widget/Button;

    const v1, 0x7f0200c3

    invoke-direct {p0, v0, v1}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->setTransportationButtonDrawable(Landroid/widget/Button;I)V

    .line 249
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mCarButton:Landroid/widget/Button;

    const v1, 0x7f0200c1

    invoke-direct {p0, v0, v1}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->setTransportationButtonDrawable(Landroid/widget/Button;I)V

    .line 250
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mOtherButton:Landroid/widget/Button;

    const v1, 0x7f0200c0

    invoke-direct {p0, v0, v1}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->setTransportationButtonDrawable(Landroid/widget/Button;I)V

    .line 251
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mTaxiButton:Landroid/widget/Button;

    const v1, 0x7f0200c5

    invoke-direct {p0, v0, v1}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->setTransportationButtonDrawable(Landroid/widget/Button;I)V

    .line 252
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mPublicTransportationButton:Landroid/widget/Button;

    const v1, 0x7f0200c4

    invoke-direct {p0, v0, v1}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->setTransportationButtonDrawable(Landroid/widget/Button;I)V

    .line 253
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mOtherLocalButton:Landroid/widget/Button;

    const v1, 0x7f0200c2

    invoke-direct {p0, v0, v1}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->setTransportationButtonDrawable(Landroid/widget/Button;I)V

    .line 255
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mPlaneButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->setTransportationButtonListener(Landroid/widget/Button;Z)V

    .line 256
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mCarButton:Landroid/widget/Button;

    invoke-direct {p0, v0, v2}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->setTransportationButtonListener(Landroid/widget/Button;Z)V

    .line 257
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mOtherButton:Landroid/widget/Button;

    invoke-direct {p0, v0, v2}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->setTransportationButtonListener(Landroid/widget/Button;Z)V

    .line 258
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mTaxiButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->setLocalTransportationButtonListener(Landroid/widget/Button;)V

    .line 259
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mPublicTransportationButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->setLocalTransportationButtonListener(Landroid/widget/Button;)V

    .line 260
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mOtherLocalButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->setLocalTransportationButtonListener(Landroid/widget/Button;)V

    .line 261
    return-void
.end method

.method private showAirlineLoader(Z)V
    .registers 5
    .param p1, "show"    # Z

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 554
    if-eqz p1, :cond_1f

    .line 555
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineInfoLoader:Lcom/airbnb/android/views/LoaderFrame;

    invoke-virtual {v0, v2}, Lcom/airbnb/android/views/LoaderFrame;->setVisibility(I)V

    .line 556
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineInfoLoader:Lcom/airbnb/android/views/LoaderFrame;

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderFrame;->startAnimation()V

    .line 557
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mSectionFlightInfoView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 558
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 559
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineInfoError:Lcom/airbnb/android/views/AirTextView;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/AirTextView;->setVisibility(I)V

    .line 564
    :goto_1e
    return-void

    .line 561
    :cond_1f
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineInfoLoader:Lcom/airbnb/android/views/LoaderFrame;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/LoaderFrame;->setVisibility(I)V

    .line 562
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineInfoLoader:Lcom/airbnb/android/views/LoaderFrame;

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderFrame;->finish()V

    goto :goto_1e
.end method

.method private showConfirmExitDialog()V
    .registers 7

    .prologue
    .line 695
    invoke-static {}, Lcom/airbnb/android/fragments/ZenDialog;->Builder()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e002b

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withBodyText(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e00b0

    const/16 v2, 0xfa1

    const v3, 0x7f0e0563

    const/16 v4, 0xfa2

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withDualButton(IIIILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "dialog_confirm"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 699
    return-void
.end method

.method private showErrorDialog(I)V
    .registers 6
    .param p1, "errorMessageResource"    # I

    .prologue
    .line 546
    invoke-static {}, Lcom/airbnb/android/fragments/ZenDialog;->Builder()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e01ac

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withTitle(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withBodyText(Ljava/lang/String;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e0563

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withSingleButton(IILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "dialog_error"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 551
    return-void
.end method

.method private showFlightInfo(Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;)V
    .registers 6
    .param p1, "arrivalPlan"    # Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    .prologue
    const/4 v3, 0x0

    .line 571
    invoke-direct {p0, v3}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->showAirlineLoader(Z)V

    .line 572
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineInfoError:Lcom/airbnb/android/views/AirTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/AirTextView;->setVisibility(I)V

    .line 573
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineInfoContainer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 574
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mSectionFlightInfoView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 576
    invoke-virtual {p1}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getPrimaryArrival()Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;

    move-result-object v0

    .line 578
    .local v0, "primaryArrival":Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mDepartureAirportCodeTextView:Lcom/airbnb/android/views/AirTextView;

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;->getDepartureAirport()Lcom/airbnb/android/models/arrivalAssistant/Airport;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/arrivalAssistant/Airport;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/AirTextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mDepartureCityTextView:Lcom/airbnb/android/views/AirTextView;

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;->getDepartureAirport()Lcom/airbnb/android/models/arrivalAssistant/Airport;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/arrivalAssistant/Airport;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/AirTextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mDepartureTimeTextView:Lcom/airbnb/android/views/AirTextView;

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;->getFlight()Lcom/airbnb/android/models/arrivalAssistant/Flight;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/arrivalAssistant/Flight;->getDepartureTimeLocal()Lcom/airbnb/android/models/arrivalAssistant/FlightTime;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/arrivalAssistant/FlightTime;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/AirTextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mArrivalAirportCodeTextView:Lcom/airbnb/android/views/AirTextView;

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;->getArrivalAirport()Lcom/airbnb/android/models/arrivalAssistant/Airport;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/arrivalAssistant/Airport;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/AirTextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mArrivalCityTextView:Lcom/airbnb/android/views/AirTextView;

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;->getArrivalAirport()Lcom/airbnb/android/models/arrivalAssistant/Airport;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/arrivalAssistant/Airport;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/AirTextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mArrivalTimeTextView:Lcom/airbnb/android/views/AirTextView;

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;->getFlight()Lcom/airbnb/android/models/arrivalAssistant/Flight;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/arrivalAssistant/Flight;->getArrivalTimeLocal()Lcom/airbnb/android/models/arrivalAssistant/FlightTime;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/arrivalAssistant/FlightTime;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/AirTextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mSectionLocalTransportationView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 586
    return-void
.end method

.method private showStickyButtonIfComplete()V
    .registers 3

    .prologue
    .line 742
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mTransportationMode:Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->hasUnsavedChanges()Z

    move-result v0

    if-nez v0, :cond_19

    .line 743
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    const v1, 0x7f0e0735

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StickyButton;->setTitle(I)V

    .line 744
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StickyButton;->setVisibility(I)V

    .line 748
    :goto_18
    return-void

    .line 746
    :cond_19
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StickyButton;->setVisibility(I)V

    goto :goto_18
.end method

.method private startAddGeofenceRequest()V
    .registers 5

    .prologue
    .line 783
    new-instance v0, Lcom/google/android/gms/location/LocationClient;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$12;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$12;-><init>(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)V

    new-instance v3, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$13;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$13;-><init>(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/location/LocationClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mLocationClient:Lcom/google/android/gms/location/LocationClient;

    .line 802
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mGeofenceRequestInProgress:Z

    if-nez v0, :cond_21

    .line 803
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mGeofenceRequestInProgress:Z

    .line 804
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mLocationClient:Lcom/google/android/gms/location/LocationClient;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationClient;->connect()V

    .line 806
    :cond_21
    return-void
.end method

.method private updateTravelSummary()V
    .registers 5

    .prologue
    .line 518
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->createCurrentTravelSummaryParams()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 520
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mUpdateTravelSummaryRequest:Lcom/airbnb/android/requests/UpdateTravelSummaryRequest;

    if-eqz v1, :cond_d

    .line 521
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mUpdateTravelSummaryRequest:Lcom/airbnb/android/requests/UpdateTravelSummaryRequest;

    invoke-virtual {v1}, Lcom/airbnb/android/requests/UpdateTravelSummaryRequest;->cancelIfRunning()V

    .line 524
    :cond_d
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->trackTravelDetailsUpdateWithParams(JLcom/airbnb/android/utils/Strap;)V

    .line 526
    new-instance v1, Lcom/airbnb/android/requests/UpdateTravelSummaryRequest;

    new-instance v2, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$9;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$9;-><init>(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)V

    invoke-direct {v1, v0, v2}, Lcom/airbnb/android/requests/UpdateTravelSummaryRequest;-><init>(Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    iput-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mUpdateTravelSummaryRequest:Lcom/airbnb/android/requests/UpdateTravelSummaryRequest;

    .line 542
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mUpdateTravelSummaryRequest:Lcom/airbnb/android/requests/UpdateTravelSummaryRequest;

    invoke-virtual {v1, p0}, Lcom/airbnb/android/requests/UpdateTravelSummaryRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 543
    return-void
.end method


# virtual methods
.method public hasUnsavedChanges()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 678
    iget-object v3, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    if-eqz v3, :cond_2f

    .line 679
    iget-object v3, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v3}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getTransportationType()Ljava/lang/String;

    move-result-object v0

    .line 680
    .local v0, "primaryTransport":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3c

    .line 681
    sget-object v3, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->PLANE:Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    invoke-virtual {v3}, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->getTransportationTypeParam()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 683
    iget-object v3, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mLocalTransportationMode:Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    if-eqz v3, :cond_2e

    iget-object v3, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineFlightNumber:Ljava/lang/Integer;

    if-eqz v3, :cond_2e

    iget-object v3, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirline:Lcom/airbnb/android/models/arrivalAssistant/Airline;

    if-eqz v3, :cond_2e

    iget-object v3, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mDepartureDate:Ljava/util/Calendar;

    if-nez v3, :cond_2f

    :cond_2e
    move v1, v2

    .line 691
    .end local v0    # "primaryTransport":Ljava/lang/String;
    :cond_2f
    :goto_2f
    return v1

    .line 686
    .restart local v0    # "primaryTransport":Ljava/lang/String;
    :cond_30
    iget-object v3, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v3}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->hasEstimatedArrivalTime()Z

    move-result v3

    if-nez v3, :cond_3a

    :goto_38
    move v1, v2

    goto :goto_2f

    :cond_3a
    move v2, v1

    goto :goto_38

    :cond_3c
    move v1, v2

    .line 689
    goto :goto_2f
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 209
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/AirFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 211
    const/16 v2, 0x7d2

    if-ne p1, v2, :cond_1d

    .line 212
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "date"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    iput-object v2, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mDepartureDate:Ljava/util/Calendar;

    .line 213
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->setDepartureDate()V

    .line 214
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->updateTravelSummary()V

    .line 227
    :cond_1c
    :goto_1c
    return-void

    .line 215
    :cond_1d
    const/16 v2, 0xbba

    if-ne p1, v2, :cond_3e

    .line 216
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "time_hour"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 217
    .local v0, "hour":I
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "time_minute"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 218
    .local v1, "minute":I
    invoke-direct {p0, v0, v1}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->setEstimatedArrivalFromPicker(II)V

    .line 219
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->updateTravelSummary()V

    goto :goto_1c

    .line 220
    .end local v0    # "hour":I
    .end local v1    # "minute":I
    :cond_3e
    const/16 v2, 0xfa2

    if-ne p1, v2, :cond_1c

    .line 221
    iget-object v2, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    if-eqz v2, :cond_4a

    .line 222
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->clearAllDetails()V

    goto :goto_1c

    .line 224
    :cond_4a
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_1c
.end method

.method public onAddGeofencesResult(I[Ljava/lang/String;)V
    .registers 3
    .param p1, "statusCode"    # I
    .param p2, "geofenceRequestIds"    # [Ljava/lang/String;

    .prologue
    .line 861
    if-nez p1, :cond_2

    .line 867
    :cond_2
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->finishAndStartArrivalTracker()V

    .line 868
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onCreate(Landroid/os/Bundle;)V

    .line 145
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->setHasOptionsMenu(Z)V

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mGeofenceRequestInProgress:Z

    .line 148
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 159
    const v1, 0x7f03006b

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 161
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 163
    if-nez p3, :cond_50

    .line 164
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "reservation"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Reservation;

    iput-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    .line 165
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "arrival_plan"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    iput-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    .line 171
    :goto_2b
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mHandler:Landroid/os/Handler;

    .line 173
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    if-eqz v1, :cond_39

    .line 174
    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->populateCurrentArrivalPlan(Landroid/view/View;)V

    .line 177
    :cond_39
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->setupEstimatedArrivalEdit()V

    .line 178
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->setupDepartureTime()V

    .line 179
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->setupTransportationButtons()V

    .line 180
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->setupFlightInfoViews()V

    .line 182
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    new-instance v2, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$1;-><init>(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/StickyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    return-object v0

    .line 167
    :cond_50
    const-string/jumbo v1, "reservation"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Reservation;

    iput-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    .line 168
    const-string/jumbo v1, "arrival_plan"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    iput-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    goto :goto_2b
.end method

.method public onExitArrivalDetails()V
    .registers 2

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->hasUnsavedChanges()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 241
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->showConfirmExitDialog()V

    .line 245
    :goto_9
    return-void

    .line 243
    :cond_a
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_9
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 231
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 235
    :goto_7
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 233
    :pswitch_c
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->onExitArrivalDetails()V

    goto :goto_7

    .line 231
    :pswitch_data_10
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 152
    invoke-super {p0}, Lcom/airbnb/android/fragments/AirFragment;->onResume()V

    .line 154
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->trackTravelDetailsImpression(JLcom/airbnb/android/utils/Strap;)V

    .line 155
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 201
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 203
    const-string/jumbo v0, "reservation"

    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 204
    const-string/jumbo v0, "arrival_plan"

    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 205
    return-void
.end method
