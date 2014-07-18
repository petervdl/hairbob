.class public Lcom/airbnb/android/fragments/SendSpecialOfferFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "SendSpecialOfferFragment.java"


# static fields
.field public static final ARG_CHECKIN_DATE:Ljava/lang/String; = "checkin_date"

.field public static final ARG_CHECKOUT_DATE:Ljava/lang/String; = "checkout_date"

.field private static final ARG_GUEST:Ljava/lang/String; = "guest"

.field private static final ARG_LISTING:Ljava/lang/String; = "listing"

.field private static final ARG_THREAD_ID:Ljava/lang/String; = "thread_id"

.field private static final LOGIN_REQUEST:I = 0x0

.field private static final MIN_VALID_OFFER_PRICE:I = 0x5


# instance fields
.field private mCalendarRequest:Lcom/airbnb/android/requests/CalendarRequest;

.field private mCheckInDate:Ljava/util/Calendar;

.field private mCheckOutDate:Ljava/util/Calendar;

.field mDateAndGuestCountView:Lcom/airbnb/android/views/DateAndGuestCountView;

.field private mGuestCount:I

.field private mGuestUser:Lcom/airbnb/android/models/User;

.field private mListedListings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;"
        }
    .end annotation
.end field

.field private mListing:Lcom/airbnb/android/models/Listing;

.field mListingInfoContainer:Landroid/widget/RelativeLayout;

.field private mOfferPrice:I

.field mPriceEdit:Lcom/airbnb/android/views/PriceEditText;

.field mSendButton:Landroid/widget/TextView;

.field private mThreadId:J

.field mTotalPriceSummary:Landroid/widget/TextView;

.field private mUpdateMessageThreadRequest:Lcom/airbnb/android/requests/UpdateMessageThreadRequest;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mGuestCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/SendSpecialOfferFragment;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mListedListings:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/airbnb/android/fragments/SendSpecialOfferFragment;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SendSpecialOfferFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mListedListings:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/SendSpecialOfferFragment;)Ljava/util/Calendar;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mCheckInDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/SendSpecialOfferFragment;)Ljava/util/Calendar;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mCheckOutDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/SendSpecialOfferFragment;)Lcom/airbnb/android/models/Listing;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mListing:Lcom/airbnb/android/models/Listing;

    return-object v0
.end method

.method static synthetic access$402(Lcom/airbnb/android/fragments/SendSpecialOfferFragment;I)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SendSpecialOfferFragment;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mGuestCount:I

    return p1
.end method

.method static synthetic access$502(Lcom/airbnb/android/fragments/SendSpecialOfferFragment;I)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SendSpecialOfferFragment;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mOfferPrice:I

    return p1
.end method

.method static synthetic access$600(Lcom/airbnb/android/fragments/SendSpecialOfferFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->validateFieldsAndUpdateViews()V

    return-void
.end method

.method static synthetic access$700(Lcom/airbnb/android/fragments/SendSpecialOfferFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->onSendOffer()V

    return-void
.end method

.method static synthetic access$800(Lcom/airbnb/android/fragments/SendSpecialOfferFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->showListingsDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/airbnb/android/fragments/SendSpecialOfferFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->sendSpecialOffer()V

    return-void
.end method

.method private enableSendButton(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 361
    iget-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mSendButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 362
    return-void
.end method

.method private fetchListingCalendarIfNeeded()V
    .registers 5

    .prologue
    .line 319
    iget-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mCalendarRequest:Lcom/airbnb/android/requests/CalendarRequest;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mCalendarRequest:Lcom/airbnb/android/requests/CalendarRequest;

    iget-object v0, v0, Lcom/airbnb/android/requests/CalendarRequest;->mSquaresMap:Lcom/airbnb/android/models/SquareMap;

    if-eqz v0, :cond_b

    .line 337
    :goto_a
    return-void

    .line 324
    :cond_b
    new-instance v0, Lcom/airbnb/android/requests/CalendarRequest;

    iget-object v1, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v1

    new-instance v3, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$7;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$7;-><init>(Lcom/airbnb/android/fragments/SendSpecialOfferFragment;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/requests/CalendarRequest;-><init>(JLcom/airbnb/android/requests/RequestListener;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mCalendarRequest:Lcom/airbnb/android/requests/CalendarRequest;

    .line 336
    iget-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mCalendarRequest:Lcom/airbnb/android/requests/CalendarRequest;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/CalendarRequest;->execute()V

    goto :goto_a
.end method

.method private isBookingValid()Z
    .registers 3

    .prologue
    .line 365
    iget-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mCheckInDate:Ljava/util/Calendar;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mCheckOutDate:Ljava/util/Calendar;

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mOfferPrice:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static newInstance(JLcom/airbnb/android/models/Listing;Lcom/airbnb/android/models/User;JJ)Landroid/support/v4/app/Fragment;
    .registers 11
    .param p0, "threadId"    # J
    .param p2, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p3, "guestUser"    # Lcom/airbnb/android/models/User;
    .param p4, "checkInDate"    # J
    .param p6, "checkoutDate"    # J

    .prologue
    .line 81
    new-instance v1, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;-><init>()V

    .line 82
    .local v1, "fragment":Lcom/airbnb/android/fragments/SendSpecialOfferFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 83
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "thread_id"

    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 84
    const-string/jumbo v2, "listing"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 85
    const-string/jumbo v2, "guest"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 86
    const-string/jumbo v2, "checkin_date"

    invoke-virtual {v0, v2, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 87
    const-string/jumbo v2, "checkout_date"

    invoke-virtual {v0, v2, p6, p7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 89
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->setArguments(Landroid/os/Bundle;)V

    .line 91
    return-object v1
.end method

.method private onSendOffer()V
    .registers 1

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->validateAndReturn()V

    .line 316
    return-void
.end method

.method private sendSpecialOffer()V
    .registers 12

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/SolitAirActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/SolitAirActivity;->showLoader(Z)V

    .line 404
    new-instance v10, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$10;

    invoke-direct {v10, p0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$10;-><init>(Lcom/airbnb/android/fragments/SendSpecialOfferFragment;)V

    .line 425
    .local v10, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/UpdateMessageThreadRequest;>;"
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-wide v1, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mThreadId:J

    iget-object v3, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v3

    iget-object v5, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mCheckInDate:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    iget-object v6, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mCheckOutDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    iget v7, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mGuestCount:I

    iget v8, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mOfferPrice:I

    int-to-double v8, v8

    invoke-static/range {v0 .. v10}, Lcom/airbnb/android/requests/UpdateMessageThreadRequest;->forSpecialOffer(Landroid/content/Context;JJLjava/util/Date;Ljava/util/Date;IDLcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/UpdateMessageThreadRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mUpdateMessageThreadRequest:Lcom/airbnb/android/requests/UpdateMessageThreadRequest;

    .line 427
    iget-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mUpdateMessageThreadRequest:Lcom/airbnb/android/requests/UpdateMessageThreadRequest;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/UpdateMessageThreadRequest;->execute()V

    .line 428
    return-void
.end method

.method private setupListingInfo()V
    .registers 8

    .prologue
    .line 259
    iget-object v3, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mListingInfoContainer:Landroid/widget/RelativeLayout;

    new-instance v4, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$5;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$5;-><init>(Lcom/airbnb/android/fragments/SendSpecialOfferFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object v3, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mListingInfoContainer:Landroid/widget/RelativeLayout;

    const v4, 0x7f08009e

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/views/AirImageView;

    .line 271
    .local v2, "thumbnail":Lcom/airbnb/android/views/AirImageView;
    iget-object v3, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getPictureUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/AirImageView;->setImageUrl(Ljava/lang/String;)V

    .line 273
    iget-object v3, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mListingInfoContainer:Landroid/widget/RelativeLayout;

    const v4, 0x7f0800a5

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 274
    .local v1, "text":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e03de

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v6}, Lcom/airbnb/android/models/Listing;->getCity()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v6}, Lcom/airbnb/android/models/Listing;->getCountry()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "place":Ljava/lang/String;
    iget-object v3, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mListingInfoContainer:Landroid/widget/RelativeLayout;

    const v4, 0x7f080427

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "text":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 279
    .restart local v1    # "text":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    return-void
.end method

.method private setupViews()V
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 184
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->setupListingInfo()V

    .line 186
    iget-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mDateAndGuestCountView:Lcom/airbnb/android/views/DateAndGuestCountView;

    new-instance v1, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$2;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$2;-><init>(Lcom/airbnb/android/fragments/SendSpecialOfferFragment;)V

    iget v2, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mGuestCount:I

    iget-object v3, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getPersonCapacity()I

    move-result v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mCheckInDate:Ljava/util/Calendar;

    iget-object v5, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mCheckOutDate:Ljava/util/Calendar;

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/airbnb/android/views/DateAndGuestCountView;->init(Lcom/airbnb/android/views/DateAndGuestCountView$DateAndGuestCountViewer;IILjava/util/Calendar;Ljava/util/Calendar;Lcom/airbnb/android/models/SpecialOffer;Z)V

    .line 216
    iget-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mPriceEdit:Lcom/airbnb/android/views/PriceEditText;

    invoke-virtual {v0}, Lcom/airbnb/android/views/PriceEditText;->setPriceTextWidthToMatchParent()V

    .line 218
    iget-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getPriceNative()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 219
    .local v8, "priceNative":Ljava/lang/Integer;
    if-eqz v8, :cond_32

    .line 220
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mOfferPrice:I

    .line 222
    :cond_32
    iget-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mPriceEdit:Lcom/airbnb/android/views/PriceEditText;

    iget v1, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mOfferPrice:I

    iget-object v2, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getNativeCurrency()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/views/PriceEditText;->setPrice(ILjava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mPriceEdit:Lcom/airbnb/android/views/PriceEditText;

    new-instance v1, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$3;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$3;-><init>(Lcom/airbnb/android/fragments/SendSpecialOfferFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/PriceEditText;->addPriceTextChangedListener(Landroid/text/TextWatcher;)V

    .line 244
    iget-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mPriceEdit:Lcom/airbnb/android/views/PriceEditText;

    invoke-virtual {v0, v6}, Lcom/airbnb/android/views/PriceEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mSendButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 247
    iget-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mSendButton:Landroid/widget/TextView;

    new-instance v1, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$4;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$4;-><init>(Lcom/airbnb/android/fragments/SendSpecialOfferFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->validateFieldsAndUpdateViews()V

    .line 255
    return-void
.end method

.method private showListingsDialog()V
    .registers 7

    .prologue
    .line 283
    new-instance v0, Lcom/airbnb/android/adapters/ListingPickerAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mListedListings:Ljava/util/List;

    invoke-direct {v0, v3, v4}, Lcom/airbnb/android/adapters/ListingPickerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 285
    .local v0, "adapter":Lcom/airbnb/android/adapters/ListingPickerAdapter;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0e06d7

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mListedListings:Ljava/util/List;

    iget-object v5, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-interface {v4, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    new-instance v5, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$6;

    invoke-direct {v5, p0, v0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$6;-><init>(Lcom/airbnb/android/fragments/SendSpecialOfferFragment;Lcom/airbnb/android/adapters/ListingPickerAdapter;)V

    invoke-virtual {v3, v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 295
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 296
    .local v1, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 297
    return-void
.end method

.method private showSendSpecialOfferConfirmationDialog()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 378
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 379
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0e06a1

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mGuestUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v6}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 381
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e0544

    new-instance v4, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$9;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$9;-><init>(Lcom/airbnb/android/fragments/SendSpecialOfferFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e085b

    new-instance v4, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$8;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$8;-><init>(Lcom/airbnb/android/fragments/SendSpecialOfferFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 399
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 400
    return-void
.end method

.method private updateTotalPriceSummary(Z)V
    .registers 14
    .param p1, "bookingValid"    # Z

    .prologue
    const v11, 0x7f0e06a7

    const/4 v10, 0x1

    .line 347
    if-eqz p1, :cond_53

    .line 348
    iget-object v4, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mCheckInDate:Ljava/util/Calendar;

    iget-object v5, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mCheckOutDate:Ljava/util/Calendar;

    invoke-static {v4, v5}, Lcom/airbnb/android/utils/CalendarHelper;->getStayDuration(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v0

    .line 349
    .local v0, "days":I
    iget v4, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mOfferPrice:I

    mul-int v2, v4, v0

    .line 350
    .local v2, "totalPrice":I
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/airbnb/android/utils/CurrencyHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/CurrencyHelper;

    move-result-object v4

    int-to-double v5, v2

    invoke-virtual {v4, v5, v6, v10}, Lcom/airbnb/android/utils/CurrencyHelper;->formatNativeCurrency(DZ)Ljava/lang/String;

    move-result-object v3

    .line 351
    .local v3, "totalPriceStr":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e06ac

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mGuestUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v9}, Lcom/airbnb/android/models/User;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    aput-object v3, v7, v10

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v11}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 353
    .local v1, "summaryText":Ljava/lang/String;
    iget-object v4, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mTotalPriceSummary:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    .end local v0    # "days":I
    .end local v1    # "summaryText":Ljava/lang/String;
    .end local v2    # "totalPrice":I
    .end local v3    # "totalPriceStr":Ljava/lang/String;
    :goto_52
    return-void

    .line 356
    :cond_53
    iget-object v4, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mTotalPriceSummary:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(I)V

    goto :goto_52
.end method

.method private validateAndReturn()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 369
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    .line 370
    .local v0, "api":Lcom/airbnb/android/AirbnbApi;
    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->isCurrentUserAuthorized()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 371
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->showSendSpecialOfferConfirmationDialog()V

    .line 375
    :goto_12
    return-void

    .line 373
    :cond_13
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0e071d

    invoke-virtual {p0, v2}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/activities/SignInActivity;->intentForToastDisplay(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_12
.end method

.method private validateFieldsAndUpdateViews()V
    .registers 6

    .prologue
    .line 340
    iget-object v2, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mPriceEdit:Lcom/airbnb/android/views/PriceEditText;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v1, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mOfferPrice:I

    const/4 v4, 0x5

    if-lt v1, v4, :cond_20

    const v1, 0x7f0a0018

    :goto_e
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/airbnb/android/views/PriceEditText;->setPriceTextColor(I)V

    .line 341
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->isBookingValid()Z

    move-result v0

    .line 342
    .local v0, "bookingValid":Z
    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->updateTotalPriceSummary(Z)V

    .line 343
    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->enableSendButton(Z)V

    .line 344
    return-void

    .line 340
    .end local v0    # "bookingValid":Z
    :cond_20
    const v1, 0x7f0a0078

    goto :goto_e
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 11
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v5, -0x1

    .line 163
    const/4 v4, -0x1

    if-ne p2, v4, :cond_8

    .line 164
    sparse-switch p1, :sswitch_data_44

    .line 180
    :cond_8
    :goto_8
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/AirFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 181
    return-void

    .line 166
    :sswitch_c
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->sendSpecialOffer()V

    goto :goto_8

    .line 169
    :sswitch_10
    const-string/jumbo v4, "start_time"

    invoke-virtual {p3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 170
    .local v2, "startTime":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Lcom/airbnb/android/utils/CalendarHelper;->getCalendarFromLong(Ljava/lang/Long;)Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mCheckInDate:Ljava/util/Calendar;

    .line 171
    const-string/jumbo v4, "end_time"

    invoke-virtual {p3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 172
    .local v0, "endTime":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Lcom/airbnb/android/utils/CalendarHelper;->getCalendarFromLong(Ljava/lang/Long;)Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mCheckOutDate:Ljava/util/Calendar;

    .line 173
    iget-object v4, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mDateAndGuestCountView:Lcom/airbnb/android/views/DateAndGuestCountView;

    iget-object v5, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mCheckInDate:Ljava/util/Calendar;

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/DateAndGuestCountView;->setCheckInDate(Ljava/util/Calendar;)V

    .line 174
    iget-object v4, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mDateAndGuestCountView:Lcom/airbnb/android/views/DateAndGuestCountView;

    iget-object v5, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mCheckOutDate:Ljava/util/Calendar;

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/DateAndGuestCountView;->setCheckOutDate(Ljava/util/Calendar;)V

    .line 175
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->validateFieldsAndUpdateViews()V

    goto :goto_8

    .line 164
    :sswitch_data_44
    .sparse-switch
        0x0 -> :sswitch_c
        0x65 -> :sswitch_10
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v4, -0x1

    .line 96
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 99
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "thread_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mThreadId:J

    .line 100
    const-string/jumbo v1, "listing"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Listing;

    iput-object v1, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mListing:Lcom/airbnb/android/models/Listing;

    .line 101
    const-string/jumbo v1, "guest"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/User;

    iput-object v1, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mGuestUser:Lcom/airbnb/android/models/User;

    .line 102
    const-string/jumbo v1, "checkin_date"

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/utils/CalendarHelper;->getCalendarFromLong(Ljava/lang/Long;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mCheckInDate:Ljava/util/Calendar;

    .line 103
    const-string/jumbo v1, "checkout_date"

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/utils/CalendarHelper;->getCalendarFromLong(Ljava/lang/Long;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mCheckOutDate:Ljava/util/Calendar;

    .line 104
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 108
    const v1, 0x7f0300e9

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 110
    .local v0, "v":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 112
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->setupViews()V

    .line 114
    return-object v0
.end method

.method protected onListingChanged(Lcom/airbnb/android/models/Listing;)V
    .registers 6
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 301
    iget-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_22

    .line 302
    iput-object p1, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mListing:Lcom/airbnb/android/models/Listing;

    .line 304
    iget-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mCalendarRequest:Lcom/airbnb/android/requests/CalendarRequest;

    if-eqz v0, :cond_19

    .line 305
    iget-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mCalendarRequest:Lcom/airbnb/android/requests/CalendarRequest;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/CalendarRequest;->cancelIfRunning()V

    .line 307
    :cond_19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mCalendarRequest:Lcom/airbnb/android/requests/CalendarRequest;

    .line 309
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->fetchListingCalendarIfNeeded()V

    .line 310
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->setupViews()V

    .line 312
    :cond_22
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 154
    invoke-super {p0}, Lcom/airbnb/android/fragments/AirFragment;->onPause()V

    .line 155
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mPriceEdit:Lcom/airbnb/android/views/PriceEditText;

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/KeyboardUtils;->dismissSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 156
    iget-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mCalendarRequest:Lcom/airbnb/android/requests/CalendarRequest;

    if-eqz v0, :cond_15

    .line 157
    iget-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mCalendarRequest:Lcom/airbnb/android/requests/CalendarRequest;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/CalendarRequest;->cancelIfRunning()V

    .line 159
    :cond_15
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 119
    invoke-super {p0}, Lcom/airbnb/android/fragments/AirFragment;->onResume()V

    .line 122
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->fetchListingCalendarIfNeeded()V

    .line 124
    new-instance v0, Lcom/airbnb/android/requests/MySpacesRequest;

    iget-object v1, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getUserId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$1;-><init>(Lcom/airbnb/android/fragments/SendSpecialOfferFragment;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/requests/MySpacesRequest;-><init>(Ljava/lang/String;ZLcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v0, p0}, Lcom/airbnb/android/requests/MySpacesRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 150
    return-void
.end method
