.class public Lcom/airbnb/android/fragments/BookingDetailsFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "BookingDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;
    }
.end annotation


# static fields
.field private static final ARG_BOOKING_ERROR_STRING:Ljava/lang/String; = "booking_error_string"

.field private static final ARG_CHECKIN_DATE:Ljava/lang/String; = "checkin_date"

.field private static final ARG_CHECKOUT_DATE:Ljava/lang/String; = "checkout_date"

.field private static final ARG_GUEST_COUNT:Ljava/lang/String; = "guest_count"

.field private static final ARG_HAS_DATES:Ljava/lang/String; = "has_dates"

.field private static final ARG_LISTING:Ljava/lang/String; = "listing"

.field private static final ARG_PAYMENT_CHOOSER:Ljava/lang/String; = "payment_chooser"

.field private static final ARG_RESERVATION:Ljava/lang/String; = "reservation"

.field private static final ARG_SEARCH_DATES:Ljava/lang/String; = "search_dates"

.field private static final ARG_SPECIAL_OFFER:Ljava/lang/String; = "special_offer"

.field private static final AUTO_APPLY_COUPON_DELAY:I = 0x3e8

.field private static final BOOKING_CONFIRM_DIALOG_DELAY:I = 0x3e8

.field private static final CONFIRM_PAYMENT_DIALOG:Ljava/lang/String; = "confirm_payment_dialog"

.field private static final COUPON_MAX_NUM_CHAR:I = 0x9

.field private static final DIALOG_ERROR:Ljava/lang/String; = "error_dialog"

.field private static final MIN_COUPON_LENGTH:I = 0x3

.field private static final PAYMENT_PROCESSING_DIALOG:Ljava/lang/String; = "payment_processing_dialog"

.field private static final REQUEST_CODE_CONFIRM_PAYMENT_ACCEPT:I = 0x3ed

.field private static final REQUEST_CODE_CONFIRM_PAYMENT_CANCEL:I = 0x3ec

.field private static final REQUEST_CODE_DECLINE_OFFER_MAKE_NEW_REQUEST:I = 0x3ee

.field private static final REQUEST_CODE_FULL_WALLET:I = 0x3eb


# instance fields
.field private final mApplyCouponRunnable:Ljava/lang/Runnable;

.field private mBookingErrorMessage:Ljava/lang/String;

.field mChargeInfo:Landroid/widget/TextView;

.field private mCheckInDate:Ljava/util/Calendar;

.field private mCheckOutDate:Ljava/util/Calendar;

.field mCleaningFeeCell:Lcom/airbnb/android/views/GroupedCell;

.field private mCollapsed:Z

.field mCouponCodeInput:Landroid/widget/EditText;

.field mCouponSection:Landroid/view/View;

.field private mCouponTextChangedWatcher:Landroid/text/TextWatcher;

.field mCouponValueText:Landroid/widget/TextView;

.field private mCreateReservationRequest:Lcom/airbnb/android/requests/CreateReservationRequest;

.field mDateAndGuestCountView:Lcom/airbnb/android/views/DateAndGuestCountView;

.field mDeleteCouponBtn:Landroid/widget/ImageView;

.field private mDetailsSection:Landroid/view/View;

.field private mGuestCount:I

.field private mHandler:Landroid/os/Handler;

.field private mListing:Lcom/airbnb/android/models/Listing;

.field private mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

.field mPaymentChooser:Lcom/airbnb/android/views/PaymentChooser;

.field mPaymentChooserHeader:Landroid/view/View;

.field private mPaymentMethodsFX:Lcom/airbnb/android/requests/PaymentMethodsRequest;

.field private mPaymentsSection:Landroid/view/View;

.field mPriceContainer:Landroid/widget/LinearLayout;

.field mProcessCouponSpinner:Landroid/widget/ProgressBar;

.field private mReservation:Lcom/airbnb/android/models/Reservation;

.field mServiceFeeCell:Lcom/airbnb/android/views/GroupedCell;

.field private mSpecialOffer:Lcom/airbnb/android/models/SpecialOffer;

.field private mStayDuration:I

.field private mStickyButton:Lcom/airbnb/android/views/StickyButton;

.field private mStickyButtonVisibility:I

.field mSubtotalCell:Lcom/airbnb/android/views/GroupedCell;

.field mTaxesCell:Lcom/airbnb/android/views/GroupedCell;

.field mTermsConditionsTextView:Landroid/widget/TextView;

.field mTotalPriceCell:Lcom/airbnb/android/views/GroupedCell;

.field mTxtCoupon:Landroid/widget/TextView;

.field private mUseSearchDates:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    .line 156
    const/4 v0, 0x1

    iput v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mGuestCount:I

    .line 920
    new-instance v0, Lcom/airbnb/android/fragments/BookingDetailsFragment$15;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment$15;-><init>(Lcom/airbnb/android/fragments/BookingDetailsFragment;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCouponTextChangedWatcher:Landroid/text/TextWatcher;

    .line 937
    new-instance v0, Lcom/airbnb/android/fragments/BookingDetailsFragment$16;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment$16;-><init>(Lcom/airbnb/android/fragments/BookingDetailsFragment;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mApplyCouponRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/BookingDetailsFragment;)Lcom/airbnb/android/models/Listing;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/BookingDetailsFragment;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/BookingDetailsFragment;)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/BookingDetailsFragment;

    .prologue
    .line 97
    iget v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mGuestCount:I

    return v0
.end method

.method static synthetic access$1000(Lcom/airbnb/android/fragments/BookingDetailsFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/BookingDetailsFragment;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->showReservationDetails()V

    return-void
.end method

.method static synthetic access$102(Lcom/airbnb/android/fragments/BookingDetailsFragment;I)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/BookingDetailsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mGuestCount:I

    return p1
.end method

.method static synthetic access$1100(Lcom/airbnb/android/fragments/BookingDetailsFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/BookingDetailsFragment;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->requestFXCopy()V

    return-void
.end method

.method static synthetic access$1200(Lcom/airbnb/android/fragments/BookingDetailsFragment;)Lcom/airbnb/android/views/LoaderFrame;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/BookingDetailsFragment;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/airbnb/android/fragments/BookingDetailsFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/BookingDetailsFragment;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->confirmPayment()V

    return-void
.end method

.method static synthetic access$1400(Lcom/airbnb/android/fragments/BookingDetailsFragment;Lcom/airbnb/android/requests/SubmitPaymentForReservationRequest;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/BookingDetailsFragment;
    .param p1, "x1"    # Lcom/airbnb/android/requests/SubmitPaymentForReservationRequest;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->handleSuccessfulPaymentResponse(Lcom/airbnb/android/requests/SubmitPaymentForReservationRequest;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/airbnb/android/fragments/BookingDetailsFragment;Lcom/android/volley/VolleyError;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/BookingDetailsFragment;
    .param p1, "x1"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->handlePaymentError(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/airbnb/android/fragments/BookingDetailsFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/BookingDetailsFragment;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->handleBookingFailed()V

    return-void
.end method

.method static synthetic access$1700(Lcom/airbnb/android/fragments/BookingDetailsFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/BookingDetailsFragment;

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCollapsed:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/airbnb/android/fragments/BookingDetailsFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/BookingDetailsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCollapsed:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/airbnb/android/fragments/BookingDetailsFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/BookingDetailsFragment;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->updatePriceState()V

    return-void
.end method

.method static synthetic access$1900(Lcom/airbnb/android/fragments/BookingDetailsFragment;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/BookingDetailsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->applyCoupon(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/BookingDetailsFragment;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/BookingDetailsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->refreshDatesAndGuestCount(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/airbnb/android/fragments/BookingDetailsFragment;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/BookingDetailsFragment;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mApplyCouponRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/airbnb/android/fragments/BookingDetailsFragment;Lcom/airbnb/android/requests/PaymentMethodsRequest;)Lcom/airbnb/android/requests/PaymentMethodsRequest;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/BookingDetailsFragment;
    .param p1, "x1"    # Lcom/airbnb/android/requests/PaymentMethodsRequest;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mPaymentMethodsFX:Lcom/airbnb/android/requests/PaymentMethodsRequest;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/airbnb/android/fragments/BookingDetailsFragment;Lcom/airbnb/android/requests/PaymentMethodsRequest;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/BookingDetailsFragment;
    .param p1, "x1"    # Lcom/airbnb/android/requests/PaymentMethodsRequest;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->displayFXCopy(Lcom/airbnb/android/requests/PaymentMethodsRequest;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/airbnb/android/fragments/BookingDetailsFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/BookingDetailsFragment;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->handlePaymentInstruments()V

    return-void
.end method

.method static synthetic access$2400(Lcom/airbnb/android/fragments/BookingDetailsFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/BookingDetailsFragment;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->setupStickyButtonAddPaymentMethod()V

    return-void
.end method

.method static synthetic access$2500(Lcom/airbnb/android/fragments/BookingDetailsFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/BookingDetailsFragment;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->showConfirmAndPay()V

    return-void
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/BookingDetailsFragment;)Lcom/airbnb/android/models/SpecialOffer;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/BookingDetailsFragment;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mSpecialOffer:Lcom/airbnb/android/models/SpecialOffer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/BookingDetailsFragment;)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/BookingDetailsFragment;

    .prologue
    .line 97
    iget v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mStickyButtonVisibility:I

    return v0
.end method

.method static synthetic access$500(Lcom/airbnb/android/fragments/BookingDetailsFragment;)Lcom/airbnb/android/views/StickyButton;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/BookingDetailsFragment;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    return-object v0
.end method

.method static synthetic access$600(Lcom/airbnb/android/fragments/BookingDetailsFragment;)Lcom/airbnb/android/utils/Strap;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/BookingDetailsFragment;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->makeBookItAnalyticsParams()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/airbnb/android/fragments/BookingDetailsFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/BookingDetailsFragment;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->addPaymentMethod()V

    return-void
.end method

.method static synthetic access$802(Lcom/airbnb/android/fragments/BookingDetailsFragment;Lcom/airbnb/android/requests/CreateReservationRequest;)Lcom/airbnb/android/requests/CreateReservationRequest;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/BookingDetailsFragment;
    .param p1, "x1"    # Lcom/airbnb/android/requests/CreateReservationRequest;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCreateReservationRequest:Lcom/airbnb/android/requests/CreateReservationRequest;

    return-object p1
.end method

.method static synthetic access$900(Lcom/airbnb/android/fragments/BookingDetailsFragment;)Lcom/airbnb/android/models/Reservation;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/BookingDetailsFragment;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    return-object v0
.end method

.method static synthetic access$902(Lcom/airbnb/android/fragments/BookingDetailsFragment;Lcom/airbnb/android/models/Reservation;)Lcom/airbnb/android/models/Reservation;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/BookingDetailsFragment;
    .param p1, "x1"    # Lcom/airbnb/android/models/Reservation;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    return-object p1
.end method

.method private addPaymentMethod()V
    .registers 5

    .prologue
    const/16 v3, 0x708

    .line 464
    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Reservation;->getTotalPrice()I

    move-result v1

    if-lt v1, v3, :cond_1d

    :cond_e
    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-nez v1, :cond_24

    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getPriceNative()I

    move-result v1

    iget v2, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mStayDuration:I

    mul-int/2addr v1, v2

    if-ge v1, v3, :cond_24

    :cond_1d
    const/4 v0, 0x1

    .line 466
    .local v0, "priceOk":Z
    :goto_1e
    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mPaymentChooser:Lcom/airbnb/android/views/PaymentChooser;

    invoke-virtual {v1, v0}, Lcom/airbnb/android/views/PaymentChooser;->addPaymentMethod(Z)V

    .line 467
    return-void

    .line 464
    .end local v0    # "priceOk":Z
    :cond_24
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method private applyCoupon(Z)V
    .registers 7
    .param p1, "fromDoneButton"    # Z

    .prologue
    .line 1179
    iget-object v2, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCouponCodeInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1181
    .local v0, "couponInputStr":Ljava/lang/String;
    iget-object v2, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-eqz v2, :cond_1b

    if-nez p1, :cond_1c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1c

    .line 1218
    :cond_1b
    :goto_1b
    return-void

    .line 1185
    :cond_1c
    if-eqz p1, :cond_24

    .line 1186
    iget-object v2, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mProcessCouponSpinner:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1188
    :cond_24
    new-instance v1, Lcom/airbnb/android/requests/ApplyCouponRequest;

    iget-object v2, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v2

    new-instance v4, Lcom/airbnb/android/fragments/BookingDetailsFragment$20;

    invoke-direct {v4, p0, p1}, Lcom/airbnb/android/fragments/BookingDetailsFragment$20;-><init>(Lcom/airbnb/android/fragments/BookingDetailsFragment;Z)V

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/airbnb/android/requests/ApplyCouponRequest;-><init>(JLjava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 1217
    .local v1, "request":Lcom/airbnb/android/requests/ApplyCouponRequest;
    invoke-virtual {v1}, Lcom/airbnb/android/requests/ApplyCouponRequest;->execute()V

    goto :goto_1b
.end method

.method private confirmPayment()V
    .registers 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 647
    new-instance v7, Ljava/text/SimpleDateFormat;

    const v0, 0x7f0e0495

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 648
    .local v7, "format":Ljava/text/SimpleDateFormat;
    const v0, 0x7f0e0113

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCheckInDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCheckOutDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/android/utils/CurrencyHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/CurrencyHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Reservation;->getTotalPrice()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v3, v4, v5, v8}, Lcom/airbnb/android/utils/CurrencyHelper;->formatNativeCurrency(DZ)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 650
    .local v6, "dialogText":Ljava/lang/String;
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->isInstantBookable()Z

    move-result v0

    if-nez v0, :cond_54

    invoke-direct {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->hasSpecialOffer()Z

    move-result v0

    if-eqz v0, :cond_99

    .line 651
    :cond_54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0e0114

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 658
    :goto_73
    invoke-static {}, Lcom/airbnb/android/fragments/ZenDialog;->Builder()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withBodyText(Ljava/lang/String;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e00b0

    const/16 v2, 0x3ec

    const v3, 0x7f0e0111

    const/16 v4, 0x3ed

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withDualButton(IIIILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "confirm_payment_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 663
    return-void

    .line 653
    :cond_99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0e0115

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_73
.end method

.method private createLoaderCallbacks(Lorg/json/JSONObject;)Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .registers 3
    .param p1, "ccInfo"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/airbnb/android/requests/SubmitPaymentForReservationRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 713
    new-instance v0, Lcom/airbnb/android/fragments/BookingDetailsFragment$7;

    invoke-direct {v0, p0, p1}, Lcom/airbnb/android/fragments/BookingDetailsFragment$7;-><init>(Lcom/airbnb/android/fragments/BookingDetailsFragment;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method private createReservation(Z)V
    .registers 9
    .param p1, "force"    # Z

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 556
    if-nez p1, :cond_9

    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-nez v1, :cond_7b

    .line 557
    :cond_9
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    .line 558
    invoke-direct {p0, v3}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->setupPriceFields(Z)V

    .line 559
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->setupSecurityDeposit()V

    .line 560
    invoke-direct {p0, v2}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->setStickyButtonVisibility(I)V

    .line 561
    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mDetailsSection:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 562
    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mPaymentsSection:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 563
    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mTermsConditionsTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 564
    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    invoke-virtual {v1, v3}, Lcom/airbnb/android/views/LoaderFrame;->setVisibility(I)V

    .line 565
    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    invoke-virtual {v1}, Lcom/airbnb/android/views/LoaderFrame;->startAnimation()V

    .line 566
    new-instance v0, Lcom/airbnb/android/fragments/BookingDetailsFragment$5;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment$5;-><init>(Lcom/airbnb/android/fragments/BookingDetailsFragment;)V

    .line 594
    .local v0, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/CreateReservationRequest;>;"
    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCreateReservationRequest:Lcom/airbnb/android/requests/CreateReservationRequest;

    if-eqz v1, :cond_3c

    .line 595
    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCreateReservationRequest:Lcom/airbnb/android/requests/CreateReservationRequest;

    invoke-virtual {v1}, Lcom/airbnb/android/requests/CreateReservationRequest;->cancel()V

    .line 598
    :cond_3c
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->hasSpecialOffer()Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 599
    new-instance v1, Lcom/airbnb/android/requests/CreateReservationRequest;

    iget-object v2, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mSpecialOffer:Lcom/airbnb/android/models/SpecialOffer;

    invoke-virtual {v4}, Lcom/airbnb/android/models/SpecialOffer;->getId()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/airbnb/android/requests/CreateReservationRequest;->createStrap(JJ)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/airbnb/android/requests/CreateReservationRequest;-><init>(Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    iput-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCreateReservationRequest:Lcom/airbnb/android/requests/CreateReservationRequest;

    .line 605
    :goto_59
    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCreateReservationRequest:Lcom/airbnb/android/requests/CreateReservationRequest;

    invoke-virtual {v1, p0}, Lcom/airbnb/android/requests/CreateReservationRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 610
    .end local v0    # "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/CreateReservationRequest;>;"
    :goto_5e
    return-void

    .line 601
    .restart local v0    # "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/CreateReservationRequest;>;"
    :cond_5f
    new-instance v1, Lcom/airbnb/android/requests/CreateReservationRequest;

    iget-object v2, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCheckInDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    iget v5, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mStayDuration:I

    iget v6, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mGuestCount:I

    invoke-static {v2, v3, v4, v5, v6}, Lcom/airbnb/android/requests/CreateReservationRequest;->createStrap(JLjava/util/Date;II)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/airbnb/android/requests/CreateReservationRequest;-><init>(Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    iput-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCreateReservationRequest:Lcom/airbnb/android/requests/CreateReservationRequest;

    goto :goto_59

    .line 607
    .end local v0    # "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/CreateReservationRequest;>;"
    :cond_7b
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->showReservationDetails()V

    .line 608
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->requestFXCopy()V

    goto :goto_5e
.end method

.method private displayFXCopy(Lcom/airbnb/android/requests/PaymentMethodsRequest;)V
    .registers 15
    .param p1, "response"    # Lcom/airbnb/android/requests/PaymentMethodsRequest;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 1088
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1090
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-object v9, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mPaymentChooser:Lcom/airbnb/android/views/PaymentChooser;

    invoke-virtual {v9}, Lcom/airbnb/android/views/PaymentChooser;->getSelectedPaymentInstrument()Lcom/airbnb/android/models/PaymentInstrument;

    move-result-object v9

    if-eqz v9, :cond_94

    iget-object v9, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-eqz v9, :cond_94

    .line 1091
    const/4 v3, 0x0

    .line 1092
    .local v3, "method":Lcom/airbnb/android/requests/PaymentMethodsRequest$PaymentMethod;
    iget-object v9, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mPaymentChooser:Lcom/airbnb/android/views/PaymentChooser;

    invoke-virtual {v9}, Lcom/airbnb/android/views/PaymentChooser;->getSelectedPaymentInstrument()Lcom/airbnb/android/models/PaymentInstrument;

    move-result-object v1

    .line 1093
    .local v1, "instrument":Lcom/airbnb/android/models/PaymentInstrument;
    invoke-virtual {v1}, Lcom/airbnb/android/models/PaymentInstrument;->getCardType()Lcom/airbnb/android/models/PaymentInstrument$CardType;

    move-result-object v9

    iget-object v2, v9, Lcom/airbnb/android/models/PaymentInstrument$CardType;->mKey:Ljava/lang/String;

    .line 1094
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/airbnb/android/models/PaymentInstrument;->isFullPaymentInstrument()Z

    move-result v9

    if-eqz v9, :cond_10e

    .line 1095
    const-string/jumbo v9, "google"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_100

    .line 1097
    iget-object v9, p1, Lcom/airbnb/android/requests/PaymentMethodsRequest;->supportedPaymentMethods:Ljava/util/HashMap;

    const-string/jumbo v10, "master"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "method":Lcom/airbnb/android/requests/PaymentMethodsRequest$PaymentMethod;
    check-cast v3, Lcom/airbnb/android/requests/PaymentMethodsRequest$PaymentMethod;

    .line 1105
    .restart local v3    # "method":Lcom/airbnb/android/requests/PaymentMethodsRequest$PaymentMethod;
    :goto_38
    if-eqz v3, :cond_94

    .line 1106
    iget-object v9, v3, Lcom/airbnb/android/requests/PaymentMethodsRequest$PaymentMethod;->totalCharge:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->parseTotalCharge(Ljava/lang/String;)I

    move-result v8

    .line 1107
    .local v8, "totalCharge":I
    iget-object v9, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v9}, Lcom/airbnb/android/models/Reservation;->getTotalPrice()I

    move-result v9

    if-eq v8, v9, :cond_5f

    .line 1108
    const v9, 0x7f0e0210

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v3, Lcom/airbnb/android/requests/PaymentMethodsRequest$PaymentMethod;->currency:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, v3, Lcom/airbnb/android/requests/PaymentMethodsRequest$PaymentMethod;->totalCharge:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    :cond_5f
    iget-object v9, v3, Lcom/airbnb/android/requests/PaymentMethodsRequest$PaymentMethod;->currencyInfo:Lcom/airbnb/android/requests/PaymentMethodsRequest$PaymentMethod$CurrencyInfo;

    if-eqz v9, :cond_94

    .line 1112
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_6f

    .line 1113
    const-string/jumbo v9, " "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1116
    :cond_6f
    iget-object v9, v3, Lcom/airbnb/android/requests/PaymentMethodsRequest$PaymentMethod;->currencyInfo:Lcom/airbnb/android/requests/PaymentMethodsRequest$PaymentMethod$CurrencyInfo;

    iget-object v9, v9, Lcom/airbnb/android/requests/PaymentMethodsRequest$PaymentMethod$CurrencyInfo;->fxFeeRate:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_120

    .line 1117
    const v9, 0x7f0e0211

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v3, Lcom/airbnb/android/requests/PaymentMethodsRequest$PaymentMethod;->currencyInfo:Lcom/airbnb/android/requests/PaymentMethodsRequest$PaymentMethod$CurrencyInfo;

    iget-object v12, v12, Lcom/airbnb/android/requests/PaymentMethodsRequest$PaymentMethod$CurrencyInfo;->fromCurrency:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, v3, Lcom/airbnb/android/requests/PaymentMethodsRequest$PaymentMethod;->currencyInfo:Lcom/airbnb/android/requests/PaymentMethodsRequest$PaymentMethod$CurrencyInfo;

    iget-object v12, v12, Lcom/airbnb/android/requests/PaymentMethodsRequest$PaymentMethod$CurrencyInfo;->toCurrency:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1125
    .end local v1    # "instrument":Lcom/airbnb/android/models/PaymentInstrument;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "method":Lcom/airbnb/android/requests/PaymentMethodsRequest$PaymentMethod;
    .end local v8    # "totalCharge":I
    :cond_94
    :goto_94
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_ff

    .line 1126
    const-string/jumbo v9, " ?"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1127
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/airbnb/android/utils/MiscUtils;->fromHtmlSafe(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1128
    .local v6, "text":Ljava/lang/String;
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1129
    .local v5, "spannable":Landroid/text/Spannable;
    new-instance v0, Landroid/text/style/ImageSpan;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    const v10, 0x7f0200c9

    const/4 v11, 0x1

    invoke-direct {v0, v9, v10, v11}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    .line 1130
    .local v0, "imageSpan":Landroid/text/style/ImageSpan;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x11

    invoke-interface {v5, v0, v9, v10, v11}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1131
    new-instance v9, Lcom/airbnb/android/fragments/BookingDetailsFragment$19;

    invoke-direct {v9, p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment$19;-><init>(Lcom/airbnb/android/fragments/BookingDetailsFragment;)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x11

    invoke-interface {v5, v9, v10, v11, v12}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1138
    iget-object v9, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mDetailsSection:Landroid/view/View;

    const v10, 0x7f0802b9

    invoke-static {v9, v10}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1139
    .local v7, "textView":Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1140
    iget-boolean v9, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCollapsed:Z

    if-eqz v9, :cond_144

    const/16 v9, 0x8

    :goto_f9
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1141
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1143
    .end local v0    # "imageSpan":Landroid/text/style/ImageSpan;
    .end local v5    # "spannable":Landroid/text/Spannable;
    .end local v6    # "text":Ljava/lang/String;
    .end local v7    # "textView":Landroid/widget/TextView;
    :cond_ff
    return-void

    .line 1099
    .restart local v1    # "instrument":Lcom/airbnb/android/models/PaymentInstrument;
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "method":Lcom/airbnb/android/requests/PaymentMethodsRequest$PaymentMethod;
    :cond_100
    iget-object v9, p1, Lcom/airbnb/android/requests/PaymentMethodsRequest;->supportedPaymentMethods:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "method":Lcom/airbnb/android/requests/PaymentMethodsRequest$PaymentMethod;
    check-cast v3, Lcom/airbnb/android/requests/PaymentMethodsRequest$PaymentMethod;

    .restart local v3    # "method":Lcom/airbnb/android/requests/PaymentMethodsRequest$PaymentMethod;
    goto/16 :goto_38

    .line 1102
    :cond_10e
    iget-object v9, p1, Lcom/airbnb/android/requests/PaymentMethodsRequest;->existingPaymentMethods:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/airbnb/android/models/PaymentInstrument;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "method":Lcom/airbnb/android/requests/PaymentMethodsRequest$PaymentMethod;
    check-cast v3, Lcom/airbnb/android/requests/PaymentMethodsRequest$PaymentMethod;

    .restart local v3    # "method":Lcom/airbnb/android/requests/PaymentMethodsRequest$PaymentMethod;
    goto/16 :goto_38

    .line 1119
    .restart local v8    # "totalCharge":I
    :cond_120
    const v9, 0x7f0e0212

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v3, Lcom/airbnb/android/requests/PaymentMethodsRequest$PaymentMethod;->currencyInfo:Lcom/airbnb/android/requests/PaymentMethodsRequest$PaymentMethod$CurrencyInfo;

    iget-object v12, v12, Lcom/airbnb/android/requests/PaymentMethodsRequest$PaymentMethod$CurrencyInfo;->fromCurrency:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, v3, Lcom/airbnb/android/requests/PaymentMethodsRequest$PaymentMethod;->currencyInfo:Lcom/airbnb/android/requests/PaymentMethodsRequest$PaymentMethod$CurrencyInfo;

    iget-object v12, v12, Lcom/airbnb/android/requests/PaymentMethodsRequest$PaymentMethod$CurrencyInfo;->toCurrency:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    iget-object v12, v3, Lcom/airbnb/android/requests/PaymentMethodsRequest$PaymentMethod;->currencyInfo:Lcom/airbnb/android/requests/PaymentMethodsRequest$PaymentMethod$CurrencyInfo;

    iget-object v12, v12, Lcom/airbnb/android/requests/PaymentMethodsRequest$PaymentMethod$CurrencyInfo;->fxFeeRate:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_94

    .line 1140
    .end local v1    # "instrument":Lcom/airbnb/android/models/PaymentInstrument;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "method":Lcom/airbnb/android/requests/PaymentMethodsRequest$PaymentMethod;
    .end local v8    # "totalCharge":I
    .restart local v0    # "imageSpan":Landroid/text/style/ImageSpan;
    .restart local v5    # "spannable":Landroid/text/Spannable;
    .restart local v6    # "text":Ljava/lang/String;
    .restart local v7    # "textView":Landroid/widget/TextView;
    :cond_144
    const/4 v9, 0x0

    goto :goto_f9
.end method

.method private handleBookingFailed()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 769
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "payment_processing_dialog"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 770
    .local v0, "fragment":Landroid/support/v4/app/DialogFragment;
    if-eqz v0, :cond_13

    .line 771
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 774
    :cond_13
    invoke-static {}, Lcom/airbnb/android/fragments/ZenDialog;->Builder()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    const v2, 0x7f0e01ac

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withTitle(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mBookingErrorMessage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4a

    const v1, 0x7f0e01af

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2d
    invoke-virtual {v2, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withBodyText(Ljava/lang/String;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    const v2, 0x7f0e0563

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withSingleButton(IILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "error_dialog"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 780
    iput-object v4, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mBookingErrorMessage:Ljava/lang/String;

    .line 781
    return-void

    .line 774
    :cond_4a
    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mBookingErrorMessage:Ljava/lang/String;

    goto :goto_2d
.end method

.method private handleBookingSuccess()V
    .registers 6

    .prologue
    .line 784
    const/4 v0, 0x0

    .line 785
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Reservation;->isCheckpointed()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 786
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/activities/VerifiedIdActivity;->intentForVerifiedId(Landroid/content/Context;Lcom/airbnb/android/models/CheckpointVerifications;Lcom/airbnb/android/models/Reservation;)Landroid/content/Intent;

    move-result-object v0

    .line 792
    :goto_14
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->makeBookItAnalyticsParams()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/analytics/BookItAnalytics;->trackBookItGeneralComplete(Lcom/airbnb/android/utils/Strap;)V

    .line 794
    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->startActivity(Landroid/content/Intent;)V

    .line 795
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 796
    return-void

    .line 789
    :cond_26
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    const-string/jumbo v3, "new_booking"

    sget-object v4, Lcom/airbnb/android/activities/ROActivity$LaunchState;->Message:Lcom/airbnb/android/activities/ROActivity$LaunchState;

    invoke-static {v1, v2, v3, v4}, Lcom/airbnb/android/activities/ROActivity;->intentForReservation(Landroid/content/Context;Lcom/airbnb/android/models/Reservation;Ljava/lang/String;Lcom/airbnb/android/activities/ROActivity$LaunchState;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_14
.end method

.method private handlePaymentError(Lcom/android/volley/VolleyError;)V
    .registers 5
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 756
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StickyButton;->setEnabled(Z)V

    .line 757
    invoke-static {p1}, Lcom/airbnb/android/requests/AirbnbRequest;->parseErrorMessage(Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mBookingErrorMessage:Ljava/lang/String;

    .line 758
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->makeBookItAnalyticsParams()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "ERROR_MESSAGE"

    iget-object v2, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mBookingErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/analytics/BookItAnalytics;->trackBookItError(Lcom/airbnb/android/utils/Strap;)V

    .line 760
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/airbnb/android/fragments/BookingDetailsFragment$8;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment$8;-><init>(Lcom/airbnb/android/fragments/BookingDetailsFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 766
    return-void
.end method

.method private handlePaymentInstruments()V
    .registers 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mPaymentChooser:Lcom/airbnb/android/views/PaymentChooser;

    invoke-virtual {v0}, Lcom/airbnb/android/views/PaymentChooser;->hasPaymentInstruments()Z

    move-result v0

    if-nez v0, :cond_c

    .line 453
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->setupStickyButtonAddPaymentMethod()V

    .line 460
    :cond_b
    :goto_b
    return-void

    .line 455
    :cond_c
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-eqz v0, :cond_b

    .line 456
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->showConfirmAndPay()V

    .line 457
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->requestFXCopy()V

    goto :goto_b
.end method

.method private handleSuccessfulPaymentResponse(Lcom/airbnb/android/requests/SubmitPaymentForReservationRequest;)V
    .registers 7
    .param p1, "response"    # Lcom/airbnb/android/requests/SubmitPaymentForReservationRequest;

    .prologue
    .line 744
    iget-object v2, p1, Lcom/airbnb/android/requests/SubmitPaymentForReservationRequest;->reservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Reservation;->getReservation()Lcom/airbnb/android/models/Reservation;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    .line 746
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "payment_processing_dialog"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    .line 747
    .local v1, "fragment":Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;
    if-eqz v1, :cond_3a

    .line 748
    iget-object v2, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Reservation;->isAccepted()Z

    move-result v2

    if-eqz v2, :cond_32

    const v2, 0x7f0e00a1

    invoke-virtual {p0, v2}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 749
    .local v0, "dialogCompleteTitle":Ljava/lang/String;
    :goto_26
    const-string/jumbo v2, ""

    const v3, 0x7f020028

    const/16 v4, 0x3e8

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->onProgressComplete(Ljava/lang/String;Ljava/lang/String;II)V

    .line 753
    .end local v0    # "dialogCompleteTitle":Ljava/lang/String;
    :goto_31
    return-void

    .line 748
    :cond_32
    const v2, 0x7f0e00a2

    invoke-virtual {p0, v2}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    .line 751
    :cond_3a
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->handleBookingSuccess()V

    goto :goto_31
.end method

.method private hasSpecialOffer()Z
    .registers 2

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mSpecialOffer:Lcom/airbnb/android/models/SpecialOffer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static instanceForDates(Lcom/airbnb/android/models/Listing;JJI)Lcom/airbnb/android/fragments/BookingDetailsFragment;
    .registers 10
    .param p0, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p1, "checkin"    # J
    .param p3, "checkout"    # J
    .param p5, "numGuests"    # I

    .prologue
    .line 188
    new-instance v1, Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/BookingDetailsFragment;-><init>()V

    .line 189
    .local v1, "f":Lcom/airbnb/android/fragments/BookingDetailsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 190
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "listing"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 191
    const-string/jumbo v2, "has_dates"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 192
    const-string/jumbo v2, "guest_count"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 193
    const-string/jumbo v2, "checkin_date"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 194
    const-string/jumbo v2, "checkout_date"

    invoke-virtual {v0, v2, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 195
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 196
    return-object v1
.end method

.method public static instanceForSpecialOffer(Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/models/SpecialOffer;)Lcom/airbnb/android/fragments/BookingDetailsFragment;
    .registers 5
    .param p0, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p1, "specialOffer"    # Lcom/airbnb/android/models/SpecialOffer;

    .prologue
    .line 200
    new-instance v1, Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/BookingDetailsFragment;-><init>()V

    .line 201
    .local v1, "f":Lcom/airbnb/android/fragments/BookingDetailsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 202
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "listing"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 203
    const-string/jumbo v2, "special_offer"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 204
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 205
    return-object v1
.end method

.method private makeBookItAnalyticsParams()Lcom/airbnb/android/utils/Strap;
    .registers 6

    .prologue
    .line 1158
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 1160
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-eqz v1, :cond_4b

    .line 1161
    const-string/jumbo v1, "TOTAL_PRICE"

    iget-object v2, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Reservation;->getTotalPrice()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "SERVICE_FEE"

    iget-object v3, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Reservation;->getGuestFee()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "COUPON_AMOUNT"

    iget-object v3, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Reservation;->getCouponPriceNative()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "RESERVATION_ID"

    iget-object v3, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    .line 1167
    :cond_4b
    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCheckInDate:Ljava/util/Calendar;

    if-eqz v1, :cond_5f

    .line 1168
    const-string/jumbo v1, "CHECKIN_DATE"

    iget-object v2, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCheckInDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    .line 1171
    :cond_5f
    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCheckOutDate:Ljava/util/Calendar;

    if-eqz v1, :cond_73

    .line 1172
    const-string/jumbo v1, "CHECKOUT_DATE"

    iget-object v2, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCheckOutDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    .line 1175
    :cond_73
    return-object v0
.end method

.method private makeCCPayment(Lcom/airbnb/android/models/PaymentInstrument;)V
    .registers 9
    .param p1, "instrument"    # Lcom/airbnb/android/models/PaymentInstrument;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 696
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    .line 698
    .local v2, "manager":Landroid/support/v4/app/LoaderManager;
    invoke-static {p1}, Lcom/airbnb/android/requests/SubmitPaymentForReservationRequest;->createPaymentJson(Lcom/airbnb/android/models/PaymentInstrument;)Lorg/json/JSONObject;

    move-result-object v0

    .line 700
    .local v0, "ccInfo":Lorg/json/JSONObject;
    const v3, 0x7f0e0117

    invoke-virtual {p0, v3}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    move-result-object v1

    .line 701
    .local v1, "fragment":Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;
    invoke-virtual {v1, v5}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->setCancelable(Z)V

    .line 702
    const/16 v3, 0x191

    invoke-virtual {v1, p0, v3}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 703
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string/jumbo v4, "payment_processing_dialog"

    invoke-virtual {v1, v3, v4}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 705
    invoke-virtual {v2, v5}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v3

    if-eqz v3, :cond_38

    .line 706
    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->createLoaderCallbacks(Lorg/json/JSONObject;)Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    move-result-object v3

    invoke-virtual {v2, v5, v6, v3}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 710
    :goto_37
    return-void

    .line 708
    :cond_38
    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->createLoaderCallbacks(Lorg/json/JSONObject;)Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    move-result-object v3

    invoke-virtual {v2, v5, v6, v3}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_37
.end method

.method private makePayment()V
    .registers 4

    .prologue
    .line 666
    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mPaymentChooser:Lcom/airbnb/android/views/PaymentChooser;

    invoke-virtual {v1}, Lcom/airbnb/android/views/PaymentChooser;->getSelectedPaymentInstrument()Lcom/airbnb/android/models/PaymentInstrument;

    move-result-object v0

    .line 667
    .local v0, "instrument":Lcom/airbnb/android/models/PaymentInstrument;
    invoke-virtual {v0}, Lcom/airbnb/android/models/PaymentInstrument;->getCardType()Lcom/airbnb/android/models/PaymentInstrument$CardType;

    move-result-object v1

    sget-object v2, Lcom/airbnb/android/models/PaymentInstrument$CardType;->GoogleWallet:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    if-ne v1, v2, :cond_12

    .line 668
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->loadFullGoogleWallet()V

    .line 672
    :goto_11
    return-void

    .line 670
    :cond_12
    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->makeCCPayment(Lcom/airbnb/android/models/PaymentInstrument;)V

    goto :goto_11
.end method

.method public static newInstance(Lcom/airbnb/android/models/Listing;Z)Lcom/airbnb/android/fragments/BookingDetailsFragment;
    .registers 5
    .param p0, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p1, "useSearchDates"    # Z

    .prologue
    .line 178
    new-instance v1, Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/BookingDetailsFragment;-><init>()V

    .line 179
    .local v1, "f":Lcom/airbnb/android/fragments/BookingDetailsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 180
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "listing"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 181
    const-string/jumbo v2, "search_dates"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 182
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 183
    return-object v1
.end method

.method private parseArgsFromBundle(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v6, 0x0

    .line 248
    const-string/jumbo v4, "guest_count"

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mGuestCount:I

    .line 249
    const-string/jumbo v4, "checkin_date"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 250
    .local v0, "checkinTime":J
    cmp-long v4, v0, v6

    if-lez v4, :cond_22

    .line 251
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCheckInDate:Ljava/util/Calendar;

    .line 252
    iget-object v4, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCheckInDate:Ljava/util/Calendar;

    invoke-virtual {v4, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 254
    :cond_22
    const-string/jumbo v4, "checkout_date"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 255
    .local v2, "checkoutTime":J
    cmp-long v4, v2, v6

    if-lez v4, :cond_38

    .line 256
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCheckOutDate:Ljava/util/Calendar;

    .line 257
    iget-object v4, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCheckOutDate:Ljava/util/Calendar;

    invoke-virtual {v4, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 259
    :cond_38
    return-void
.end method

.method private parseTotalCharge(Ljava/lang/String;)I
    .registers 5
    .param p1, "charge"    # Ljava/lang/String;

    .prologue
    .line 1147
    :try_start_0
    const-string/jumbo v1, "[^\\d]"

    const-string/jumbo v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_d} :catch_f

    move-result v1

    .line 1149
    :goto_e
    return v1

    .line 1148
    :catch_f
    move-exception v0

    .line 1149
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_e
.end method

.method private refreshDatesAndGuestCount(Z)V
    .registers 4
    .param p1, "forceUpdate"    # Z

    .prologue
    .line 547
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mDateAndGuestCountView:Lcom/airbnb/android/views/DateAndGuestCountView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCheckInDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/DateAndGuestCountView;->setCheckInDate(Ljava/util/Calendar;)V

    .line 548
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mDateAndGuestCountView:Lcom/airbnb/android/views/DateAndGuestCountView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCheckOutDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/DateAndGuestCountView;->setCheckOutDate(Ljava/util/Calendar;)V

    .line 550
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCheckInDate:Ljava/util/Calendar;

    if-eqz v0, :cond_15

    .line 551
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->createReservation(Z)V

    .line 553
    :cond_15
    return-void
.end method

.method private requestFXCopy()V
    .registers 7

    .prologue
    .line 1055
    iget-object v2, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mPaymentChooser:Lcom/airbnb/android/views/PaymentChooser;

    invoke-virtual {v2}, Lcom/airbnb/android/views/PaymentChooser;->getCountryForSelectedPaymentInstrument()Ljava/lang/String;

    move-result-object v0

    .line 1056
    .local v0, "country":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1057
    .local v1, "reLoad":Z
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1058
    const/4 v1, 0x1

    .line 1059
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 1062
    :cond_16
    iget-object v2, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mDetailsSection:Landroid/view/View;

    const v3, 0x7f0802b9

    invoke-static {v2, v3}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1063
    iget-object v2, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-eqz v2, :cond_55

    iget-object v2, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_55

    iget-object v2, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mPaymentChooser:Lcom/airbnb/android/views/PaymentChooser;

    invoke-virtual {v2}, Lcom/airbnb/android/views/PaymentChooser;->getSelectedPaymentInstrument()Lcom/airbnb/android/models/PaymentInstrument;

    move-result-object v2

    if-eqz v2, :cond_55

    .line 1064
    if-nez v1, :cond_42

    iget-object v2, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mPaymentMethodsFX:Lcom/airbnb/android/requests/PaymentMethodsRequest;

    if-nez v2, :cond_56

    .line 1065
    :cond_42
    new-instance v2, Lcom/airbnb/android/requests/PaymentMethodsRequest;

    iget-object v3, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v3

    new-instance v5, Lcom/airbnb/android/fragments/BookingDetailsFragment$18;

    invoke-direct {v5, p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment$18;-><init>(Lcom/airbnb/android/fragments/BookingDetailsFragment;)V

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/airbnb/android/requests/PaymentMethodsRequest;-><init>(JLjava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v2}, Lcom/airbnb/android/requests/PaymentMethodsRequest;->execute()V

    .line 1084
    :cond_55
    :goto_55
    return-void

    .line 1081
    :cond_56
    iget-object v2, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mPaymentMethodsFX:Lcom/airbnb/android/requests/PaymentMethodsRequest;

    invoke-direct {p0, v2}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->displayFXCopy(Lcom/airbnb/android/requests/PaymentMethodsRequest;)V

    goto :goto_55
.end method

.method private setStayDuration(Ljava/util/Calendar;Ljava/util/Calendar;I)V
    .registers 6
    .param p1, "startTime"    # Ljava/util/Calendar;
    .param p2, "endTime"    # Ljava/util/Calendar;
    .param p3, "duration"    # I

    .prologue
    .line 538
    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCheckInDate:Ljava/util/Calendar;

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mStayDuration:I

    if-eq v1, p3, :cond_17

    :cond_c
    const/4 v0, 0x1

    .line 539
    .local v0, "force":Z
    :goto_d
    iput-object p1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCheckInDate:Ljava/util/Calendar;

    .line 540
    iput-object p2, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCheckOutDate:Ljava/util/Calendar;

    .line 541
    iput p3, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mStayDuration:I

    .line 543
    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->refreshDatesAndGuestCount(Z)V

    .line 544
    return-void

    .line 538
    .end local v0    # "force":Z
    :cond_17
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private setStickyButtonVisibility(I)V
    .registers 3
    .param p1, "visibility"    # I

    .prologue
    .line 485
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/views/StickyButton;->setVisibility(I)V

    .line 486
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    invoke-virtual {v0}, Lcom/airbnb/android/views/StickyButton;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mStickyButtonVisibility:I

    .line 487
    return-void
.end method

.method private setupPaymentChooser(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 1221
    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Reservation;->getTotalPrice()I

    move-result v0

    .line 1223
    .local v0, "totalPrice":I
    :goto_a
    iget-object v3, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mPaymentChooser:Lcom/airbnb/android/views/PaymentChooser;

    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v1

    :goto_16
    invoke-virtual {v3, v1, v2}, Lcom/airbnb/android/views/PaymentChooser;->setReservationId(J)V

    .line 1224
    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mPaymentChooser:Lcom/airbnb/android/views/PaymentChooser;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/PaymentChooser;->setTotalPrice(Ljava/lang/Integer;)V

    .line 1225
    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mPaymentChooser:Lcom/airbnb/android/views/PaymentChooser;

    new-instance v2, Lcom/airbnb/android/fragments/BookingDetailsFragment$21;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment$21;-><init>(Lcom/airbnb/android/fragments/BookingDetailsFragment;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/PaymentChooser;->setPaymentChooserListener(Lcom/airbnb/android/views/PaymentChooser$PaymentChooserListener;)V

    .line 1255
    if-eqz p1, :cond_33

    .line 1256
    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mPaymentChooser:Lcom/airbnb/android/views/PaymentChooser;

    invoke-virtual {v1, p1}, Lcom/airbnb/android/views/PaymentChooser;->restorePaymentChooserState(Landroid/os/Bundle;)V

    .line 1258
    :cond_33
    return-void

    .line 1221
    .end local v0    # "totalPrice":I
    :cond_34
    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getPriceNative()I

    move-result v1

    iget v2, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mStayDuration:I

    mul-int v0, v1, v2

    goto :goto_a

    .line 1223
    .restart local v0    # "totalPrice":I
    :cond_3f
    const-wide/16 v1, -0x1

    goto :goto_16
.end method

.method private setupPriceFields(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .prologue
    .line 826
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mPriceContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_5

    .line 918
    :cond_4
    :goto_4
    return-void

    .line 830
    :cond_5
    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mPriceContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_4f

    const/4 v0, 0x0

    :goto_a
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 832
    if-eqz p1, :cond_4

    .line 833
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCollapsed:Z

    .line 834
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->updatePriceState()V

    .line 836
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mTotalPriceCell:Lcom/airbnb/android/views/GroupedCell;

    new-instance v1, Lcom/airbnb/android/fragments/BookingDetailsFragment$10;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment$10;-><init>(Lcom/airbnb/android/fragments/BookingDetailsFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 846
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCouponSection:Landroid/view/View;

    new-instance v1, Lcom/airbnb/android/fragments/BookingDetailsFragment$11;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment$11;-><init>(Lcom/airbnb/android/fragments/BookingDetailsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 854
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCouponCodeInput:Landroid/widget/EditText;

    new-instance v1, Lcom/airbnb/android/fragments/BookingDetailsFragment$12;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment$12;-><init>(Lcom/airbnb/android/fragments/BookingDetailsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 866
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCouponCodeInput:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCouponTextChangedWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 868
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCouponCodeInput:Landroid/widget/EditText;

    new-instance v1, Lcom/airbnb/android/fragments/BookingDetailsFragment$13;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment$13;-><init>(Lcom/airbnb/android/fragments/BookingDetailsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 878
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mDeleteCouponBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/airbnb/android/fragments/BookingDetailsFragment$14;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment$14;-><init>(Lcom/airbnb/android/fragments/BookingDetailsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 830
    :cond_4f
    const/16 v0, 0x8

    goto :goto_a
.end method

.method private setupSecurityDeposit()V
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 799
    iget-object v3, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mDetailsSection:Landroid/view/View;

    const v4, 0x7f0804ed

    invoke-static {v3, v4}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/GroupedCell;

    .line 800
    .local v1, "securityDepositCell":Lcom/airbnb/android/views/GroupedCell;
    iget-object v3, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mDetailsSection:Landroid/view/View;

    const v4, 0x7f0804ec

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 802
    .local v2, "securityDepositSectionHeader":Landroid/view/View;
    iget-object v3, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-eqz v3, :cond_23

    iget-object v3, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Reservation;->getSecurityDeposit()I

    move-result v3

    if-nez v3, :cond_2a

    .line 803
    :cond_23
    invoke-virtual {v1, v6}, Lcom/airbnb/android/views/GroupedCell;->setVisibility(I)V

    .line 804
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 823
    :goto_29
    return-void

    .line 806
    :cond_2a
    invoke-virtual {v1, v5}, Lcom/airbnb/android/views/GroupedCell;->setVisibility(I)V

    .line 807
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 808
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/android/utils/CurrencyHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/CurrencyHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Reservation;->getSecurityDeposit()I

    move-result v4

    int-to-double v4, v4

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/airbnb/android/utils/CurrencyHelper;->formatNativeCurrency(DZ)Ljava/lang/String;

    move-result-object v0

    .line 809
    .local v0, "securityDepositAmount":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/airbnb/android/views/GroupedCell;->setContent(Ljava/lang/CharSequence;)V

    .line 810
    invoke-virtual {v1}, Lcom/airbnb/android/views/GroupedCell;->getTooltip()Lcom/airbnb/android/views/GroupedTooltip;

    move-result-object v3

    new-instance v4, Lcom/airbnb/android/fragments/BookingDetailsFragment$9;

    invoke-direct {v4, p0, v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment$9;-><init>(Lcom/airbnb/android/fragments/BookingDetailsFragment;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/airbnb/android/views/GroupedTooltip;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_29
.end method

.method private setupStickyButtonAddPaymentMethod()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 470
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-eqz v0, :cond_2d

    const/4 v0, 0x0

    :goto_7
    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->setStickyButtonVisibility(I)V

    .line 471
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mPaymentChooser:Lcom/airbnb/android/views/PaymentChooser;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/PaymentChooser;->setVisibility(I)V

    .line 472
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mPaymentChooserHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 473
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    const v1, 0x7f0e0041

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StickyButton;->setTitle(I)V

    .line 474
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StickyButton;->setEnabled(Z)V

    .line 475
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    new-instance v1, Lcom/airbnb/android/fragments/BookingDetailsFragment$4;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment$4;-><init>(Lcom/airbnb/android/fragments/BookingDetailsFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StickyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    return-void

    :cond_2d
    move v0, v1

    .line 470
    goto :goto_7
.end method

.method private setupTermsConditionsText()V
    .registers 5

    .prologue
    .line 382
    iget-object v3, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-eqz v3, :cond_21

    iget-object v3, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Reservation;->getTaxAmount()I

    move-result v3

    if-lez v3, :cond_21

    const/4 v0, 0x1

    .line 383
    .local v0, "hasTaxes":Z
    :goto_d
    if-eqz v0, :cond_23

    const v3, 0x7f0e073b

    :goto_12
    invoke-virtual {p0, v3}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 385
    .local v2, "termsConditionsText":Ljava/lang/String;
    new-instance v1, Lcom/airbnb/android/fragments/BookingDetailsFragment$3;

    invoke-direct {v1, p0, v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment$3;-><init>(Lcom/airbnb/android/fragments/BookingDetailsFragment;Z)V

    .line 412
    .local v1, "listener":Lcom/airbnb/android/utils/ClickableLinkUtils$LinkOnClickListener;
    iget-object v3, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mTermsConditionsTextView:Landroid/widget/TextView;

    invoke-static {v3, v2, v1}, Lcom/airbnb/android/utils/ClickableLinkUtils;->setupClickableTextView(Landroid/widget/TextView;Ljava/lang/String;Lcom/airbnb/android/utils/ClickableLinkUtils$LinkOnClickListener;)V

    .line 413
    return-void

    .line 382
    .end local v0    # "hasTaxes":Z
    .end local v1    # "listener":Lcom/airbnb/android/utils/ClickableLinkUtils$LinkOnClickListener;
    .end local v2    # "termsConditionsText":Ljava/lang/String;
    :cond_21
    const/4 v0, 0x0

    goto :goto_d

    .line 383
    .restart local v0    # "hasTaxes":Z
    :cond_23
    const v3, 0x7f0e0116

    goto :goto_12
.end method

.method private showConfirmAndPay()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 629
    invoke-direct {p0, v1}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->setStickyButtonVisibility(I)V

    .line 630
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mPaymentChooser:Lcom/airbnb/android/views/PaymentChooser;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/PaymentChooser;->setVisibility(I)V

    .line 631
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mPaymentChooserHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 632
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mTermsConditionsTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 633
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    const v1, 0x7f0e0112

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StickyButton;->setTitle(I)V

    .line 634
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StickyButton;->setEnabled(Z)V

    .line 635
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    new-instance v1, Lcom/airbnb/android/fragments/BookingDetailsFragment$6;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment$6;-><init>(Lcom/airbnb/android/fragments/BookingDetailsFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StickyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 643
    return-void
.end method

.method private showReservationDetails()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 613
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mDetailsSection:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 614
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mPaymentsSection:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 615
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/LoaderFrame;->setVisibility(I)V

    .line 616
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderFrame;->finish()V

    .line 617
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->setupPriceFields(Z)V

    .line 618
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->setupTermsConditionsText()V

    .line 619
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->setupSecurityDeposit()V

    .line 621
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mPaymentChooser:Lcom/airbnb/android/views/PaymentChooser;

    invoke-virtual {v0}, Lcom/airbnb/android/views/PaymentChooser;->hasPaymentInstruments()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 622
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->showConfirmAndPay()V

    .line 626
    :goto_2c
    return-void

    .line 624
    :cond_2d
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->setupStickyButtonAddPaymentMethod()V

    goto :goto_2c
.end method

.method private updatePriceState()V
    .registers 15

    .prologue
    .line 951
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->makeBookItAnalyticsParams()Lcom/airbnb/android/utils/Strap;

    move-result-object v7

    invoke-static {v7}, Lcom/airbnb/android/analytics/BookItAnalytics;->trackBookItGeneralPriceUpdate(Lcom/airbnb/android/utils/Strap;)V

    .line 953
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/airbnb/android/utils/CurrencyHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/CurrencyHelper;

    move-result-object v4

    .line 954
    .local v4, "helper":Lcom/airbnb/android/utils/CurrencyHelper;
    iget-object v7, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mTotalPriceCell:Lcom/airbnb/android/views/GroupedCell;

    iget-object v8, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v8}, Lcom/airbnb/android/models/Reservation;->getTotalPrice()I

    move-result v8

    int-to-double v8, v8

    const/4 v10, 0x1

    invoke-virtual {v4, v8, v9, v10}, Lcom/airbnb/android/utils/CurrencyHelper;->formatNativeCurrency(DZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/airbnb/android/views/GroupedCell;->setContent(Ljava/lang/CharSequence;)V

    .line 955
    iget-object v7, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mTotalPriceCell:Lcom/airbnb/android/views/GroupedCell;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/airbnb/android/views/GroupedCell;->setTitleBold(Z)V

    .line 956
    iget-object v7, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mTotalPriceCell:Lcom/airbnb/android/views/GroupedCell;

    invoke-virtual {v7}, Lcom/airbnb/android/views/GroupedCell;->getTooltip()Lcom/airbnb/android/views/GroupedTooltip;

    move-result-object v7

    const v8, 0x7f020137

    const v9, 0x7f0a001c

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/airbnb/android/views/GroupedTooltip;->setTooltipIcon(IIZ)V

    .line 959
    iget-object v7, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v7}, Lcom/airbnb/android/models/Reservation;->getPerNightPrice()I

    move-result v7

    int-to-double v7, v7

    const/4 v9, 0x1

    invoke-virtual {v4, v7, v8, v9}, Lcom/airbnb/android/utils/CurrencyHelper;->formatNativeCurrency(DZ)Ljava/lang/String;

    move-result-object v3

    .line 960
    .local v3, "formattedPerNightPrice":Ljava/lang/String;
    iget-object v7, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mSubtotalCell:Lcom/airbnb/android/views/GroupedCell;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d001f

    iget-object v10, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v10}, Lcom/airbnb/android/models/Reservation;->getReservedNightsCount()I

    move-result v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v13}, Lcom/airbnb/android/models/Reservation;->getReservedNightsCount()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/airbnb/android/views/GroupedCell;->setTitle(Ljava/lang/CharSequence;)V

    .line 964
    iget-object v7, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mSubtotalCell:Lcom/airbnb/android/views/GroupedCell;

    iget-object v8, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v8}, Lcom/airbnb/android/models/Reservation;->getBasePrice()I

    move-result v8

    int-to-double v8, v8

    const/4 v10, 0x1

    invoke-virtual {v4, v8, v9, v10}, Lcom/airbnb/android/utils/CurrencyHelper;->formatNativeCurrency(DZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/airbnb/android/views/GroupedCell;->setContent(Ljava/lang/CharSequence;)V

    .line 967
    iget-object v7, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v7}, Lcom/airbnb/android/models/Listing;->getCleaningFee()I

    move-result v7

    if-lez v7, :cond_158

    .line 968
    iget-object v7, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCleaningFeeCell:Lcom/airbnb/android/views/GroupedCell;

    iget-object v8, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v8}, Lcom/airbnb/android/models/Listing;->getCleaningFee()I

    move-result v8

    int-to-double v8, v8

    const/4 v10, 0x1

    invoke-virtual {v4, v8, v9, v10}, Lcom/airbnb/android/utils/CurrencyHelper;->formatNativeCurrency(DZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/airbnb/android/views/GroupedCell;->setContent(Ljava/lang/CharSequence;)V

    .line 972
    :goto_95
    iget-object v7, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mServiceFeeCell:Lcom/airbnb/android/views/GroupedCell;

    iget-object v8, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v8}, Lcom/airbnb/android/models/Reservation;->getGuestFee()I

    move-result v8

    int-to-double v8, v8

    const/4 v10, 0x1

    invoke-virtual {v4, v8, v9, v10}, Lcom/airbnb/android/utils/CurrencyHelper;->formatNativeCurrency(DZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/airbnb/android/views/GroupedCell;->setContent(Ljava/lang/CharSequence;)V

    .line 974
    iget-object v7, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v7}, Lcom/airbnb/android/models/Reservation;->getTaxAmount()I

    move-result v7

    if-lez v7, :cond_161

    .line 975
    iget-object v7, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mTaxesCell:Lcom/airbnb/android/views/GroupedCell;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/airbnb/android/views/GroupedCell;->setVisibility(I)V

    .line 976
    iget-object v7, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mTaxesCell:Lcom/airbnb/android/views/GroupedCell;

    iget-object v8, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v8}, Lcom/airbnb/android/models/Reservation;->getTaxAmount()I

    move-result v8

    int-to-double v8, v8

    const/4 v10, 0x1

    invoke-virtual {v4, v8, v9, v10}, Lcom/airbnb/android/utils/CurrencyHelper;->formatNativeCurrency(DZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/airbnb/android/views/GroupedCell;->setContent(Ljava/lang/CharSequence;)V

    .line 977
    iget-object v7, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mTaxesCell:Lcom/airbnb/android/views/GroupedCell;

    invoke-virtual {v7}, Lcom/airbnb/android/views/GroupedCell;->getTooltip()Lcom/airbnb/android/views/GroupedTooltip;

    move-result-object v7

    new-instance v8, Lcom/airbnb/android/fragments/BookingDetailsFragment$17;

    invoke-direct {v8, p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment$17;-><init>(Lcom/airbnb/android/fragments/BookingDetailsFragment;)V

    invoke-virtual {v7, v8}, Lcom/airbnb/android/views/GroupedTooltip;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 987
    :goto_d3
    iget-object v7, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mPriceContainer:Landroid/widget/LinearLayout;

    const v8, 0x7f0804e0

    invoke-static {v7, v8}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 988
    .local v5, "priceBreakdown":Landroid/widget/LinearLayout;
    iget-boolean v7, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCollapsed:Z

    if-eqz v7, :cond_16a

    const/16 v7, 0x8

    :goto_e4
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 990
    iget-object v7, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v7}, Lcom/airbnb/android/models/Reservation;->getCouponCode()Ljava/lang/String;

    move-result-object v1

    .line 991
    .local v1, "couponCode":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_16d

    .line 993
    iget-object v7, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCouponCodeInput:Landroid/widget/EditText;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 994
    iget-object v7, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCouponValueText:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 995
    iget-object v7, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mDeleteCouponBtn:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 997
    iget-object v7, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mTxtCoupon:Landroid/widget/TextView;

    const v8, 0x7f0e05d0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 998
    iget-object v7, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCouponCodeInput:Landroid/widget/EditText;

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1045
    :cond_117
    :goto_117
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    iget-boolean v7, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCollapsed:Z

    if-eqz v7, :cond_24a

    const v7, 0x7f04000f

    :goto_122
    invoke-static {v8, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1046
    .local v0, "arrowRotation":Landroid/view/animation/Animation;
    iget-object v7, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mTotalPriceCell:Lcom/airbnb/android/views/GroupedCell;

    invoke-virtual {v7}, Lcom/airbnb/android/views/GroupedCell;->getTooltip()Lcom/airbnb/android/views/GroupedTooltip;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/airbnb/android/views/GroupedTooltip;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1047
    iget-object v8, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mTotalPriceCell:Lcom/airbnb/android/views/GroupedCell;

    iget-boolean v7, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCollapsed:Z

    if-nez v7, :cond_24f

    const/4 v7, 0x1

    :goto_136
    invoke-virtual {v8, v7}, Lcom/airbnb/android/views/GroupedCell;->showTopBorder(Z)V

    .line 1049
    iget-object v7, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mDetailsSection:Landroid/view/View;

    const v8, 0x7f0802b9

    invoke-static {v7, v8}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1050
    .local v6, "textView":Landroid/widget/TextView;
    iget-boolean v7, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCollapsed:Z

    if-nez v7, :cond_152

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_252

    :cond_152
    const/16 v7, 0x8

    :goto_154
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1051
    return-void

    .line 970
    .end local v0    # "arrowRotation":Landroid/view/animation/Animation;
    .end local v1    # "couponCode":Ljava/lang/String;
    .end local v5    # "priceBreakdown":Landroid/widget/LinearLayout;
    .end local v6    # "textView":Landroid/widget/TextView;
    :cond_158
    iget-object v7, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCleaningFeeCell:Lcom/airbnb/android/views/GroupedCell;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/airbnb/android/views/GroupedCell;->setVisibility(I)V

    goto/16 :goto_95

    .line 984
    :cond_161
    iget-object v7, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mTaxesCell:Lcom/airbnb/android/views/GroupedCell;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/airbnb/android/views/GroupedCell;->setVisibility(I)V

    goto/16 :goto_d3

    .line 988
    .restart local v5    # "priceBreakdown":Landroid/widget/LinearLayout;
    :cond_16a
    const/4 v7, 0x0

    goto/16 :goto_e4

    .line 1002
    .restart local v1    # "couponCode":Ljava/lang/String;
    :cond_16d
    iget-object v7, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCouponCodeInput:Landroid/widget/EditText;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1003
    iget-object v7, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCouponValueText:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1004
    iget-object v7, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mDeleteCouponBtn:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1007
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "referral-"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1d8

    .line 1008
    iget-object v7, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mTxtCoupon:Landroid/widget/TextView;

    const v8, 0x7f0e05ce

    invoke-virtual {p0, v8}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1017
    :goto_19d
    iget-object v7, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v7}, Lcom/airbnb/android/models/Reservation;->getCouponPriceNative()I

    move-result v7

    int-to-double v7, v7

    const/4 v9, 0x1

    invoke-virtual {v4, v7, v8, v9}, Lcom/airbnb/android/utils/CurrencyHelper;->formatNativeCurrency(DZ)Ljava/lang/String;

    move-result-object v2

    .line 1018
    .local v2, "couponValue":Ljava/lang/String;
    iget-boolean v7, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCollapsed:Z

    if-eqz v7, :cond_212

    .line 1020
    iget-object v7, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCouponValueText:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1021
    iget-object v7, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCouponValueText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0018

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1024
    iget-object v7, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCouponSection:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1025
    iget-object v7, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCouponSection:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-nez v7, :cond_117

    .line 1026
    iget-object v7, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mPriceContainer:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCouponSection:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_117

    .line 1010
    .end local v2    # "couponValue":Ljava/lang/String;
    :cond_1d8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x9

    if-le v7, v8, :cond_1ff

    .line 1011
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    const/16 v9, 0x9

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0e01a4

    invoke-virtual {p0, v8}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1014
    :cond_1ff
    iget-object v7, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mTxtCoupon:Landroid/widget/TextView;

    const v8, 0x7f0e05cd

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_19d

    .line 1031
    .restart local v2    # "couponValue":Ljava/lang/String;
    :cond_212
    iget-object v7, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCouponValueText:Landroid/widget/TextView;

    const v8, 0x7f0e05d1

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1032
    iget-object v7, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCouponValueText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0030

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1035
    iget-object v7, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mPriceContainer:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCouponSection:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1036
    iget-object v7, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCouponSection:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-nez v7, :cond_117

    .line 1037
    iget-object v7, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCouponSection:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_117

    .line 1045
    .end local v2    # "couponValue":Ljava/lang/String;
    :cond_24a
    const v7, 0x7f04000e

    goto/16 :goto_122

    .line 1047
    .restart local v0    # "arrowRotation":Landroid/view/animation/Animation;
    :cond_24f
    const/4 v7, 0x0

    goto/16 :goto_136

    .line 1050
    .restart local v6    # "textView":Landroid/widget/TextView;
    :cond_252
    const/4 v7, 0x0

    goto/16 :goto_154
.end method


# virtual methods
.method public loadFullGoogleWallet()V
    .registers 8

    .prologue
    .line 675
    iget-object v4, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Reservation;->getTotalPrice()I

    move-result v2

    .line 678
    .local v2, "price":I
    iget-object v4, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Reservation;->getTotalPrice()I

    move-result v4

    const/16 v5, 0x708

    if-ge v4, v5, :cond_62

    .line 679
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/airbnb/android/utils/CurrencyHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/CurrencyHelper;

    move-result-object v0

    .line 680
    .local v0, "currencyHelper":Lcom/airbnb/android/utils/CurrencyHelper;
    int-to-double v4, v2

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/airbnb/android/utils/CurrencyHelper;->formatNativeCurrency(DZ)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ","

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 682
    .local v3, "sanitizedPrice":Ljava/lang/String;
    invoke-static {}, Lcom/google/android/gms/wallet/FullWalletRequest;->newBuilder()Lcom/google/android/gms/wallet/FullWalletRequest$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mPaymentChooser:Lcom/airbnb/android/views/PaymentChooser;

    invoke-virtual {v5}, Lcom/airbnb/android/views/PaymentChooser;->getGoogleMaskedWallet()Lcom/google/android/gms/wallet/MaskedWallet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/wallet/MaskedWallet;->getGoogleTransactionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/wallet/FullWalletRequest$Builder;->setGoogleTransactionId(Ljava/lang/String;)Lcom/google/android/gms/wallet/FullWalletRequest$Builder;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/wallet/Cart;->newBuilder()Lcom/google/android/gms/wallet/Cart$Builder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/airbnb/android/utils/CurrencyHelper;->getLocalCurrencyString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/wallet/Cart$Builder;->setCurrencyCode(Ljava/lang/String;)Lcom/google/android/gms/wallet/Cart$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/wallet/Cart$Builder;->setTotalPrice(Ljava/lang/String;)Lcom/google/android/gms/wallet/Cart$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/wallet/Cart$Builder;->build()Lcom/google/android/gms/wallet/Cart;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/wallet/FullWalletRequest$Builder;->setCart(Lcom/google/android/gms/wallet/Cart;)Lcom/google/android/gms/wallet/FullWalletRequest$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/wallet/FullWalletRequest$Builder;->build()Lcom/google/android/gms/wallet/FullWalletRequest;

    move-result-object v1

    .line 689
    .local v1, "fullWalletRequest":Lcom/google/android/gms/wallet/FullWalletRequest;
    iget-object v4, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mPaymentChooser:Lcom/airbnb/android/views/PaymentChooser;

    invoke-virtual {v4}, Lcom/airbnb/android/views/PaymentChooser;->getGoogleWalletClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v4

    const/16 v5, 0x3eb

    invoke-static {v4, v1, v5}, Lcom/google/android/gms/wallet/Wallet;->loadFullWallet(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/FullWalletRequest;I)V

    .line 693
    .end local v0    # "currencyHelper":Lcom/airbnb/android/utils/CurrencyHelper;
    .end local v1    # "fullWalletRequest":Lcom/google/android/gms/wallet/FullWalletRequest;
    .end local v3    # "sanitizedPrice":Ljava/lang/String;
    :goto_61
    return-void

    .line 691
    :cond_62
    iget-object v4, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mPaymentChooser:Lcom/airbnb/android/views/PaymentChooser;

    invoke-virtual {v4}, Lcom/airbnb/android/views/PaymentChooser;->showMaxPriceWalletError()V

    goto :goto_61
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 16
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 491
    sparse-switch p1, :sswitch_data_b0

    .line 530
    :cond_3
    :goto_3
    iget-object v9, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mPaymentChooser:Lcom/airbnb/android/views/PaymentChooser;

    invoke-virtual {v9, p1, p2, p3}, Lcom/airbnb/android/views/PaymentChooser;->onActivityResult(IILandroid/content/Intent;)V

    .line 534
    :cond_8
    :goto_8
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/AirFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 535
    return-void

    .line 493
    :sswitch_c
    const/4 v9, -0x1

    if-ne p2, v9, :cond_22

    .line 494
    const-string/jumbo v9, "com.google.android.gms.wallet.EXTRA_FULL_WALLET"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/wallet/FullWallet;

    .line 495
    .local v4, "fullWallet":Lcom/google/android/gms/wallet/FullWallet;
    if-eqz v4, :cond_8

    .line 496
    invoke-static {v4}, Lcom/airbnb/android/models/PaymentInstrument;->createGoogleWalletPaymentInstrument(Lcom/google/android/gms/wallet/FullWallet;)Lcom/airbnb/android/models/PaymentInstrument;

    move-result-object v5

    .line 497
    .local v5, "instrument":Lcom/airbnb/android/models/PaymentInstrument;
    invoke-direct {p0, v5}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->makeCCPayment(Lcom/airbnb/android/models/PaymentInstrument;)V

    goto :goto_8

    .line 500
    .end local v4    # "fullWallet":Lcom/google/android/gms/wallet/FullWallet;
    .end local v5    # "instrument":Lcom/airbnb/android/models/PaymentInstrument;
    :cond_22
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->showConfirmAndPay()V

    goto :goto_8

    .line 504
    :sswitch_26
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->makeBookItAnalyticsParams()Lcom/airbnb/android/utils/Strap;

    move-result-object v9

    const-string/jumbo v10, "OPTION"

    const-string/jumbo v11, "BOOK"

    invoke-virtual {v9, v10, v11}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v9

    invoke-static {v9}, Lcom/airbnb/android/analytics/BookItAnalytics;->trackBookItConfirmAndPayDialogClick(Lcom/airbnb/android/utils/Strap;)V

    .line 505
    iget-object v9, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/airbnb/android/views/StickyButton;->setEnabled(Z)V

    .line 506
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->makePayment()V

    goto :goto_8

    .line 509
    :sswitch_41
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->makeBookItAnalyticsParams()Lcom/airbnb/android/utils/Strap;

    move-result-object v9

    const-string/jumbo v10, "OPTION"

    const-string/jumbo v11, "CANCEL"

    invoke-virtual {v9, v10, v11}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v9

    invoke-static {v9}, Lcom/airbnb/android/analytics/BookItAnalytics;->trackBookItConfirmAndPayDialogClick(Lcom/airbnb/android/utils/Strap;)V

    goto :goto_8

    .line 512
    :sswitch_53
    const/4 v9, -0x1

    if-ne p2, v9, :cond_8

    .line 513
    const-string/jumbo v9, "start_time"

    const-wide/16 v10, -0x1

    invoke-virtual {p3, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 514
    .local v7, "startTime":J
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v9}, Lcom/airbnb/android/utils/CalendarHelper;->getCalendarFromLong(Ljava/lang/Long;)Ljava/util/Calendar;

    move-result-object v6

    .line 515
    .local v6, "startCalendar":Ljava/util/Calendar;
    const-string/jumbo v9, "end_time"

    const-wide/16 v10, -0x1

    invoke-virtual {p3, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 516
    .local v2, "endTime":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v9}, Lcom/airbnb/android/utils/CalendarHelper;->getCalendarFromLong(Ljava/lang/Long;)Ljava/util/Calendar;

    move-result-object v1

    .line 517
    .local v1, "endCalendar":Ljava/util/Calendar;
    const-string/jumbo v9, "duration"

    const/4 v10, 0x1

    invoke-virtual {p3, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 518
    .local v0, "duration":I
    invoke-direct {p0, v6, v1, v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->setStayDuration(Ljava/util/Calendar;Ljava/util/Calendar;I)V

    goto :goto_8

    .line 522
    .end local v0    # "duration":I
    .end local v1    # "endCalendar":Ljava/util/Calendar;
    .end local v2    # "endTime":J
    .end local v6    # "startCalendar":Ljava/util/Calendar;
    .end local v7    # "startTime":J
    :sswitch_84
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    iget-object v10, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/airbnb/android/activities/BookingDetailsActivity;->intentForListing(Landroid/content/Context;Lcom/airbnb/android/models/Listing;Z)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->startActivity(Landroid/content/Intent;)V

    .line 523
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto/16 :goto_8

    .line 526
    :sswitch_9b
    const/4 v9, -0x1

    if-ne p2, v9, :cond_3

    if-eqz p3, :cond_3

    const-string/jumbo v9, "on_progress_complete"

    const/4 v10, 0x0

    invoke-virtual {p3, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 527
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->handleBookingSuccess()V

    goto/16 :goto_3

    .line 491
    nop

    :sswitch_data_b0
    .sparse-switch
        0x65 -> :sswitch_53
        0x191 -> :sswitch_9b
        0x3eb -> :sswitch_c
        0x3ec -> :sswitch_41
        0x3ed -> :sswitch_26
        0x3ee -> :sswitch_84
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 210
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onCreate(Landroid/os/Bundle;)V

    .line 212
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mHandler:Landroid/os/Handler;

    .line 214
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "search_dates"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mUseSearchDates:Z

    .line 215
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "listing"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Listing;

    iput-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    .line 216
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "special_offer"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/SpecialOffer;

    iput-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mSpecialOffer:Lcom/airbnb/android/models/SpecialOffer;

    .line 218
    if-eqz p1, :cond_6a

    .line 219
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->parseArgsFromBundle(Landroid/os/Bundle;)V

    .line 221
    const-string/jumbo v1, "reservation"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Reservation;

    iput-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    .line 222
    const-string/jumbo v1, "booking_error_string"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mBookingErrorMessage:Ljava/lang/String;

    .line 242
    :cond_4f
    :goto_4f
    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCheckInDate:Ljava/util/Calendar;

    if-eqz v1, :cond_69

    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCheckOutDate:Ljava/util/Calendar;

    if-eqz v1, :cond_69

    .line 243
    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCheckInDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCheckOutDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/airbnb/android/utils/DateHelper;->dayCount(Ljava/util/Date;Ljava/util/Date;)I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mStayDuration:I

    .line 245
    :cond_69
    return-void

    .line 224
    :cond_6a
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->hasSpecialOffer()Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 225
    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mSpecialOffer:Lcom/airbnb/android/models/SpecialOffer;

    invoke-virtual {v1}, Lcom/airbnb/android/models/SpecialOffer;->getNumberOfGuests()I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mGuestCount:I

    .line 226
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCheckInDate:Ljava/util/Calendar;

    .line 227
    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCheckInDate:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mSpecialOffer:Lcom/airbnb/android/models/SpecialOffer;

    invoke-virtual {v2}, Lcom/airbnb/android/models/SpecialOffer;->getStartDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 229
    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCheckInDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    iput-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCheckOutDate:Ljava/util/Calendar;

    .line 230
    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCheckOutDate:Ljava/util/Calendar;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mSpecialOffer:Lcom/airbnb/android/models/SpecialOffer;

    invoke-virtual {v3}, Lcom/airbnb/android/models/SpecialOffer;->getNights()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    goto :goto_4f

    .line 232
    :cond_a0
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "has_dates"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 233
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->parseArgsFromBundle(Landroid/os/Bundle;)V

    goto :goto_4f

    .line 234
    :cond_b5
    iget-boolean v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mUseSearchDates:Z

    if-eqz v1, :cond_4f

    .line 235
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApplication;->getSearchInfo()Lcom/airbnb/android/models/SearchInfo;

    move-result-object v0

    .line 236
    .local v0, "searchInfo":Lcom/airbnb/android/models/SearchInfo;
    invoke-virtual {v0}, Lcom/airbnb/android/models/SearchInfo;->getCheckinDate()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCheckInDate:Ljava/util/Calendar;

    .line 237
    invoke-virtual {v0}, Lcom/airbnb/android/models/SearchInfo;->getCheckoutDate()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCheckOutDate:Ljava/util/Calendar;

    .line 238
    invoke-virtual {v0}, Lcom/airbnb/android/models/SearchInfo;->getGuestCount()I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mGuestCount:I

    goto/16 :goto_4f
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 13
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 284
    const v0, 0x7f03006e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 285
    .local v8, "v":Landroid/view/View;
    invoke-static {p0, v8}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 287
    const v0, 0x7f08014c

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mDetailsSection:Landroid/view/View;

    .line 288
    const v0, 0x7f08014e

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mPaymentsSection:Landroid/view/View;

    .line 289
    const v0, 0x7f080150

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/LoaderFrame;

    iput-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    .line 291
    const v0, 0x7f080147

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/StickyButton;

    iput-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    .line 292
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    invoke-virtual {v0}, Lcom/airbnb/android/views/StickyButton;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mStickyButtonVisibility:I

    .line 294
    if-eqz p3, :cond_9b

    const-string/jumbo v0, "payment_chooser"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :goto_44
    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->setupPaymentChooser(Landroid/os/Bundle;)V

    .line 296
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mDateAndGuestCountView:Lcom/airbnb/android/views/DateAndGuestCountView;

    new-instance v1, Lcom/airbnb/android/fragments/BookingDetailsFragment$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment$1;-><init>(Lcom/airbnb/android/fragments/BookingDetailsFragment;)V

    iget v2, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mGuestCount:I

    iget-object v3, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getPersonCapacity()I

    move-result v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCheckInDate:Ljava/util/Calendar;

    iget-object v5, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCheckOutDate:Ljava/util/Calendar;

    iget-object v6, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mSpecialOffer:Lcom/airbnb/android/models/SpecialOffer;

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/airbnb/android/views/DateAndGuestCountView;->init(Lcom/airbnb/android/views/DateAndGuestCountView$DateAndGuestCountViewer;IILjava/util/Calendar;Ljava/util/Calendar;Lcom/airbnb/android/models/SpecialOffer;Z)V

    .line 353
    const v0, 0x7f08014a

    invoke-static {v8, v0}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/LinearListView;

    new-instance v1, Lcom/airbnb/android/adapters/ListingsRowAdapter;

    iget-object v2, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    sget-object v3, Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;->WITH_ROOMTYPE:Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;

    invoke-direct {v1, v2, v3}, Lcom/airbnb/android/adapters/ListingsRowAdapter;-><init>(Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/LinearListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 355
    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mChargeInfo:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->isInstantBookable()Z

    move-result v0

    if-nez v0, :cond_85

    invoke-direct {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->hasSpecialOffer()Z

    move-result v0

    if-eqz v0, :cond_9d

    :cond_85
    const v0, 0x7f0e00cb

    :goto_88
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 357
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->setupTermsConditionsText()V

    .line 359
    invoke-virtual {v8}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/airbnb/android/fragments/BookingDetailsFragment$2;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment$2;-><init>(Lcom/airbnb/android/fragments/BookingDetailsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 369
    return-object v8

    .line 294
    :cond_9b
    const/4 v0, 0x0

    goto :goto_44

    .line 355
    :cond_9d
    const v0, 0x7f0e00cc

    goto :goto_88
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    .line 375
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCouponCodeInput:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mApplyCouponRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 376
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCouponCodeInput:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCouponTextChangedWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 378
    invoke-super {p0}, Lcom/airbnb/android/fragments/AirFragment;->onDestroyView()V

    .line 379
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 446
    invoke-super {p0}, Lcom/airbnb/android/fragments/AirFragment;->onPause()V

    .line 448
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 449
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 435
    invoke-super {p0}, Lcom/airbnb/android/fragments/AirFragment;->onResume()V

    .line 437
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mBookingErrorMessage:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 438
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->handleBookingFailed()V

    .line 442
    :cond_b
    :goto_b
    return-void

    .line 439
    :cond_c
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "payment_processing_dialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 440
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v3}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->createLoaderCallbacks(Lorg/json/JSONObject;)Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_b
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 263
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 265
    const-string/jumbo v0, "guest_count"

    iget v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mGuestCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 267
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCheckInDate:Ljava/util/Calendar;

    if-eqz v0, :cond_1b

    .line 268
    const-string/jumbo v0, "checkin_date"

    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCheckInDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 271
    :cond_1b
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCheckOutDate:Ljava/util/Calendar;

    if-eqz v0, :cond_2b

    .line 272
    const-string/jumbo v0, "checkout_date"

    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCheckOutDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 275
    :cond_2b
    const-string/jumbo v0, "reservation"

    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 277
    const-string/jumbo v0, "payment_chooser"

    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mPaymentChooser:Lcom/airbnb/android/views/PaymentChooser;

    invoke-virtual {v1}, Lcom/airbnb/android/views/PaymentChooser;->createPaymentChooserStateBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 279
    const-string/jumbo v0, "booking_error_string"

    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mBookingErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 417
    invoke-super {p0}, Lcom/airbnb/android/fragments/AirFragment;->onStart()V

    .line 419
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->makeBookItAnalyticsParams()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/analytics/BookItAnalytics;->trackBookItGeneralView(Lcom/airbnb/android/utils/Strap;)V

    .line 421
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mPaymentChooser:Lcom/airbnb/android/views/PaymentChooser;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/PaymentChooser;->connectGoogleWalletClient(Z)V

    .line 422
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 426
    invoke-super {p0}, Lcom/airbnb/android/fragments/AirFragment;->onStop()V

    .line 428
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->makeBookItAnalyticsParams()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/analytics/BookItAnalytics;->trackBookItGeneralExit(Lcom/airbnb/android/utils/Strap;)V

    .line 430
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mPaymentChooser:Lcom/airbnb/android/views/PaymentChooser;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/PaymentChooser;->connectGoogleWalletClient(Z)V

    .line 431
    return-void
.end method
