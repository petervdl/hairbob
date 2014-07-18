.class public Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "CompanionPlaceFragment.java"


# static fields
.field private static final DIALOG_ERROR:Ljava/lang/String; = "dialog_error"

.field public static final EXTRA_COMPANION_PLACE:Ljava/lang/String; = "companion_place"

.field private static final ROTATION_DURATION:J = 0x12cL


# instance fields
.field mCompanionAddress:Lcom/airbnb/android/views/AirTextView;

.field private mCompanionPlace:Lcom/airbnb/android/models/localcompanion/CompanionPlace;

.field mCompanionPlaceDirections:Landroid/widget/LinearLayout;

.field mCompanionPlacePhone:Lcom/airbnb/android/views/GroupedCell;

.field mCompanionPlaceTimes:Lcom/airbnb/android/views/GroupedCellExtra;

.field mCompanionPlaceWebsite:Lcom/airbnb/android/views/GroupedCell;

.field mContent:Landroid/widget/LinearLayout;

.field mHoursContainer:Landroid/widget/LinearLayout;

.field private mHoursDisplayed:Z

.field mMap:Lcom/airbnb/android/views/StaticMapView;

.field private mSimpleDateFormat:Ljava/text/SimpleDateFormat;

.field private mSimpleDateFormat24:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    .line 64
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "K:mm a"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 65
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "H:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mSimpleDateFormat24:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;)Lcom/airbnb/android/models/localcompanion/CompanionPlace;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mCompanionPlace:Lcom/airbnb/android/models/localcompanion/CompanionPlace;

    return-object v0
.end method

.method static synthetic access$002(Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;Lcom/airbnb/android/models/localcompanion/CompanionPlace;)Lcom/airbnb/android/models/localcompanion/CompanionPlace;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;
    .param p1, "x1"    # Lcom/airbnb/android/models/localcompanion/CompanionPlace;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mCompanionPlace:Lcom/airbnb/android/models/localcompanion/CompanionPlace;

    return-object p1
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mHoursDisplayed:Z

    return v0
.end method

.method static synthetic access$102(Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mHoursDisplayed:Z

    return p1
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->setupDetails()V

    return-void
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->setupOpeningHours()V

    return-void
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->setupPhotos()V

    return-void
.end method

.method public static bundleWithCompanionPlace(Lcom/airbnb/android/models/localcompanion/CompanionPlace;)Landroid/os/Bundle;
    .registers 3
    .param p0, "place"    # Lcom/airbnb/android/models/localcompanion/CompanionPlace;

    .prologue
    .line 68
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 69
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "companion_place"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 70
    return-object v0
.end method

.method private fetchCompanionPlace()V
    .registers 5

    .prologue
    .line 256
    new-instance v0, Lcom/airbnb/android/requests/LocalCompanionPlaceRequest;

    iget-object v1, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mCompanionPlace:Lcom/airbnb/android/models/localcompanion/CompanionPlace;

    invoke-virtual {v1}, Lcom/airbnb/android/models/localcompanion/CompanionPlace;->getId()J

    move-result-wide v1

    new-instance v3, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment$5;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment$5;-><init>(Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/requests/LocalCompanionPlaceRequest;-><init>(JLcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v0, p0}, Lcom/airbnb/android/requests/LocalCompanionPlaceRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 277
    return-void
.end method

.method private getFormattedTime(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "hoursIn24Formatted":Ljava/lang/String;
    :try_start_23
    iget-object v2, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mSimpleDateFormat24:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 248
    .local v0, "date":Ljava/util/Date;
    iget-object v2, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_2e
    .catch Ljava/text/ParseException; {:try_start_23 .. :try_end_2e} :catch_30

    move-result-object v2

    .line 252
    .end local v0    # "date":Ljava/util/Date;
    :goto_2f
    return-object v2

    .line 249
    :catch_30
    move-exception v2

    .line 252
    const-string/jumbo v2, ""

    goto :goto_2f
.end method

.method private setupDetails()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    .line 113
    iget-object v2, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mCompanionAddress:Lcom/airbnb/android/views/AirTextView;

    iget-object v3, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mCompanionPlace:Lcom/airbnb/android/models/localcompanion/CompanionPlace;

    invoke-virtual {v3}, Lcom/airbnb/android/models/localcompanion/CompanionPlace;->getShortAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/AirTextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v2, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mCompanionPlaceDirections:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment$1;-><init>(Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v2, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mCompanionPlace:Lcom/airbnb/android/models/localcompanion/CompanionPlace;

    invoke-virtual {v2}, Lcom/airbnb/android/models/localcompanion/CompanionPlace;->getPhone()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "phone":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 125
    iget-object v2, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mCompanionPlacePhone:Lcom/airbnb/android/views/GroupedCell;

    invoke-virtual {v2, v4}, Lcom/airbnb/android/views/GroupedCell;->setVisibility(I)V

    .line 136
    :goto_28
    iget-object v2, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mCompanionPlace:Lcom/airbnb/android/models/localcompanion/CompanionPlace;

    invoke-virtual {v2}, Lcom/airbnb/android/models/localcompanion/CompanionPlace;->getWebsite()Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "website":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 138
    iget-object v2, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mCompanionPlaceWebsite:Lcom/airbnb/android/views/GroupedCell;

    invoke-virtual {v2, v4}, Lcom/airbnb/android/views/GroupedCell;->setVisibility(I)V

    .line 150
    :goto_39
    return-void

    .line 127
    .end local v1    # "website":Ljava/lang/String;
    :cond_3a
    iget-object v2, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mCompanionPlacePhone:Lcom/airbnb/android/views/GroupedCell;

    invoke-virtual {v2, v0}, Lcom/airbnb/android/views/GroupedCell;->setContent(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v2, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mCompanionPlacePhone:Lcom/airbnb/android/views/GroupedCell;

    new-instance v3, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment$2;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment$2;-><init>(Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;)V

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/GroupedCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_28

    .line 140
    .restart local v1    # "website":Ljava/lang/String;
    :cond_4a
    iget-object v2, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mCompanionPlaceWebsite:Lcom/airbnb/android/views/GroupedCell;

    invoke-virtual {v2, v1}, Lcom/airbnb/android/views/GroupedCell;->setContent(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v2, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mCompanionPlaceWebsite:Lcom/airbnb/android/views/GroupedCell;

    new-instance v3, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment$3;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment$3;-><init>(Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;)V

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/GroupedCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_39
.end method

.method private setupMap()V
    .registers 7

    .prologue
    .line 105
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mMap:Lcom/airbnb/android/views/StaticMapView;

    invoke-virtual {v0}, Lcom/airbnb/android/views/StaticMapView;->setup()V

    .line 106
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mMap:Lcom/airbnb/android/views/StaticMapView;

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v2, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mCompanionPlace:Lcom/airbnb/android/models/localcompanion/CompanionPlace;

    invoke-virtual {v2}, Lcom/airbnb/android/models/localcompanion/CompanionPlace;->getLat()D

    move-result-wide v2

    iget-object v4, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mCompanionPlace:Lcom/airbnb/android/models/localcompanion/CompanionPlace;

    invoke-virtual {v4}, Lcom/airbnb/android/models/localcompanion/CompanionPlace;->getLng()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/views/StaticMapView;->centerMap(Lcom/google/android/gms/maps/model/LatLng;I)V

    .line 107
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mMap:Lcom/airbnb/android/views/StaticMapView;

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v2, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mCompanionPlace:Lcom/airbnb/android/models/localcompanion/CompanionPlace;

    invoke-virtual {v2}, Lcom/airbnb/android/models/localcompanion/CompanionPlace;->getLat()D

    move-result-wide v2

    iget-object v4, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mCompanionPlace:Lcom/airbnb/android/models/localcompanion/CompanionPlace;

    invoke-virtual {v4}, Lcom/airbnb/android/models/localcompanion/CompanionPlace;->getLng()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StaticMapView;->addMarkerToMap(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 108
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mMap:Lcom/airbnb/android/views/StaticMapView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StaticMapView;->setScale(I)V

    .line 109
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mMap:Lcom/airbnb/android/views/StaticMapView;

    invoke-virtual {v0}, Lcom/airbnb/android/views/StaticMapView;->freeze()V

    .line 110
    return-void
.end method

.method private setupOpeningHours()V
    .registers 22
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor"
        }
    .end annotation

    .prologue
    .line 178
    const/16 v17, 0x7

    move/from16 v0, v17

    new-array v9, v0, [Ljava/lang/String;

    .line 179
    .local v9, "daysOfWeek":[Ljava/lang/String;
    invoke-static {}, Ljava/text/DateFormatSymbols;->getInstance()Ljava/text/DateFormatSymbols;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x7

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v9, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v17

    const/16 v18, 0x7

    invoke-virtual/range {v17 .. v18}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 182
    .local v6, "currentDay":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mCompanionPlace:Lcom/airbnb/android/models/localcompanion/CompanionPlace;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/airbnb/android/models/localcompanion/CompanionPlace;->getOpeningHours()[Lcom/airbnb/android/models/localcompanion/CompanionOpeningHours;

    move-result-object v16

    .line 183
    .local v16, "openingHours":[Lcom/airbnb/android/models/localcompanion/CompanionOpeningHours;
    if-nez v16, :cond_41

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mCompanionPlaceTimes:Lcom/airbnb/android/views/GroupedCellExtra;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Lcom/airbnb/android/views/GroupedCellExtra;->setVisibility(I)V

    .line 241
    :goto_40
    return-void

    .line 186
    :cond_41
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_df

    const/16 v17, 0x0

    aget-object v17, v16, v17

    invoke-virtual/range {v17 .. v17}, Lcom/airbnb/android/models/localcompanion/CompanionOpeningHours;->getOpen()Lcom/airbnb/android/models/localcompanion/CompanionHour;

    move-result-object v17

    if-eqz v17, :cond_df

    const/16 v17, 0x0

    aget-object v17, v16, v17

    invoke-virtual/range {v17 .. v17}, Lcom/airbnb/android/models/localcompanion/CompanionOpeningHours;->getClose()Lcom/airbnb/android/models/localcompanion/CompanionHour;

    move-result-object v17

    if-nez v17, :cond_df

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mCompanionPlaceTimes:Lcom/airbnb/android/views/GroupedCellExtra;

    move-object/from16 v17, v0

    const v18, 0x7f0e0399

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/airbnb/android/views/GroupedCellExtra;->setContent(Ljava/lang/CharSequence;)V

    .line 189
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v17

    const v18, 0x7f0301dc

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 190
    .local v12, "hoursContainer":Landroid/widget/LinearLayout;
    const v17, 0x7f08050a

    move/from16 v0, v17

    invoke-static {v12, v0}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/airbnb/android/views/AirTextView;

    const v18, 0x7f0e0399

    invoke-virtual/range {v17 .. v18}, Lcom/airbnb/android/views/AirTextView;->setText(I)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mHoursContainer:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 218
    .end local v12    # "hoursContainer":Landroid/widget/LinearLayout;
    :cond_a7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mCompanionPlaceTimes:Lcom/airbnb/android/views/GroupedCellExtra;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/airbnb/android/views/GroupedCellExtra;->getIcon()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/airbnb/android/views/ColorizedIconView;

    .line 219
    .local v5, "caret":Lcom/airbnb/android/views/ColorizedIconView;
    const v17, 0x7f020137

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/airbnb/android/views/ColorizedIconView;->setDrawableId(I)V

    .line 220
    const v17, 0x7f0a0014

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/airbnb/android/views/ColorizedIconView;->setColor(I)V

    .line 222
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mHoursDisplayed:Z

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mCompanionPlaceTimes:Lcom/airbnb/android/views/GroupedCellExtra;

    move-object/from16 v17, v0

    new-instance v18, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment$4;-><init>(Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;)V

    invoke-virtual/range {v17 .. v18}, Lcom/airbnb/android/views/GroupedCellExtra;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_40

    .line 194
    .end local v5    # "caret":Lcom/airbnb/android/views/ColorizedIconView;
    :cond_df
    const-string/jumbo v7, ""

    .line 195
    .local v7, "currentDayLabel":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0b0060

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 196
    .local v13, "hoursPadding":I
    move-object/from16 v4, v16

    .local v4, "arr$":[Lcom/airbnb/android/models/localcompanion/CompanionOpeningHours;
    array-length v15, v4

    .local v15, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_f1
    if-ge v14, v15, :cond_a7

    aget-object v11, v4, v14

    .line 197
    .local v11, "hours":Lcom/airbnb/android/models/localcompanion/CompanionOpeningHours;
    invoke-virtual {v11}, Lcom/airbnb/android/models/localcompanion/CompanionOpeningHours;->getOpen()Lcom/airbnb/android/models/localcompanion/CompanionHour;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/airbnb/android/models/localcompanion/CompanionHour;->getDay()I

    move-result v17

    aget-object v8, v9, v17

    .line 198
    .local v8, "dayOfWeek":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/airbnb/android/models/localcompanion/CompanionOpeningHours;->getOpen()Lcom/airbnb/android/models/localcompanion/CompanionHour;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/airbnb/android/models/localcompanion/CompanionHour;->getTime()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->getFormattedTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " - "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v11}, Lcom/airbnb/android/models/localcompanion/CompanionOpeningHours;->getClose()Lcom/airbnb/android/models/localcompanion/CompanionHour;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/airbnb/android/models/localcompanion/CompanionHour;->getTime()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->getFormattedTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 200
    .local v10, "formattedHours":Ljava/lang/String;
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v17

    const v18, 0x7f0301dc

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 203
    .restart local v12    # "hoursContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_172

    .line 204
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v12, v0, v13, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 205
    const v17, 0x7f08050a

    move/from16 v0, v17

    invoke-static {v12, v0}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/airbnb/android/views/AirTextView;

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/airbnb/android/views/AirTextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    move-object v7, v8

    .line 209
    :cond_172
    const v17, 0x7f08050b

    move/from16 v0, v17

    invoke-static {v12, v0}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/airbnb/android/views/AirTextView;

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/airbnb/android/views/AirTextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mHoursContainer:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 212
    invoke-virtual {v11}, Lcom/airbnb/android/models/localcompanion/CompanionOpeningHours;->getOpen()Lcom/airbnb/android/models/localcompanion/CompanionHour;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/airbnb/android/models/localcompanion/CompanionHour;->getDay()I

    move-result v17

    move/from16 v0, v17

    if-ne v6, v0, :cond_1a4

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mCompanionPlaceTimes:Lcom/airbnb/android/views/GroupedCellExtra;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/airbnb/android/views/GroupedCellExtra;->setContent(Ljava/lang/CharSequence;)V

    .line 196
    :cond_1a4
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_f1
.end method

.method private setupPhotos()V
    .registers 16

    .prologue
    const/4 v14, 0x0

    .line 154
    invoke-static {}, Lcom/airbnb/android/utils/MiscUtils;->getScreenSize()Landroid/graphics/Point;

    move-result-object v11

    iget v10, v11, Landroid/graphics/Point;->x:I

    .line 155
    .local v10, "width":I
    int-to-float v11, v10

    const/high16 v12, 0x40400000

    mul-float/2addr v11, v12

    const/high16 v12, 0x40800000

    div-float/2addr v11, v12

    float-to-int v3, v11

    .line 156
    .local v3, "height":I
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v10, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 158
    .local v7, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v11, 0x1

    const/high16 v12, 0x40a00000

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    invoke-static {v11, v12, v13}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v6, v11

    .line 159
    .local v6, "marginBottom":I
    invoke-virtual {v7, v14, v14, v14, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 161
    const/4 v11, 0x4

    new-array v1, v11, [I

    fill-array-data v1, :array_62

    .line 163
    .local v1, "backgroundColorOptions":[I
    const/4 v2, 0x0

    .line 164
    .local v2, "colorIndex":I
    iget-object v11, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mCompanionPlace:Lcom/airbnb/android/models/localcompanion/CompanionPlace;

    invoke-virtual {v11}, Lcom/airbnb/android/models/localcompanion/CompanionPlace;->getPhotoUrls()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_36
    if-ge v4, v5, :cond_60

    aget-object v8, v0, v4

    .line 165
    .local v8, "photoUrl":Ljava/lang/String;
    new-instance v9, Lcom/airbnb/android/views/AirImageView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-direct {v9, v11}, Lcom/airbnb/android/views/AirImageView;-><init>(Landroid/content/Context;)V

    .line 166
    .local v9, "photoView":Lcom/airbnb/android/views/AirImageView;
    array-length v11, v1

    rem-int v11, v2, v11

    aget v11, v1, v11

    invoke-virtual {v9, v11}, Lcom/airbnb/android/views/AirImageView;->setBackgroundColor(I)V

    .line 167
    invoke-virtual {v9, v7}, Lcom/airbnb/android/views/AirImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    invoke-virtual {v9, v8}, Lcom/airbnb/android/views/AirImageView;->setImageUrl(Ljava/lang/String;)V

    .line 169
    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v11}, Lcom/airbnb/android/views/AirImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 170
    iget-object v11, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 172
    add-int/lit8 v2, v2, 0x1

    .line 164
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    .line 174
    .end local v8    # "photoUrl":Ljava/lang/String;
    .end local v9    # "photoView":Lcom/airbnb/android/views/AirImageView;
    :cond_60
    return-void

    .line 161
    nop

    :array_62
    .array-data 4
        0x7f0a0026
        0x7f0a0013
        0x7f0a0033
        0x7f0a0028
    .end array-data
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    if-eqz p1, :cond_11

    .line 78
    const-string/jumbo v0, "companion_place"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/localcompanion/CompanionPlace;

    iput-object v0, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mCompanionPlace:Lcom/airbnb/android/models/localcompanion/CompanionPlace;

    .line 82
    :goto_10
    return-void

    .line 80
    :cond_11
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "companion_place"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/localcompanion/CompanionPlace;

    iput-object v0, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mCompanionPlace:Lcom/airbnb/android/models/localcompanion/CompanionPlace;

    goto :goto_10
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    const v1, 0x7f03007d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 87
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 89
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/activities/AutoAirActivity;

    iget-object v2, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mCompanionPlace:Lcom/airbnb/android/models/localcompanion/CompanionPlace;

    invoke-virtual {v2}, Lcom/airbnb/android/models/localcompanion/CompanionPlace;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/activities/AutoAirActivity;->setupActionBar(Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActionBar;

    .line 91
    invoke-direct {p0}, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->setupMap()V

    .line 92
    invoke-direct {p0}, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->fetchCompanionPlace()V

    .line 94
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 101
    const-string/jumbo v0, "companion_place"

    iget-object v1, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mCompanionPlace:Lcom/airbnb/android/models/localcompanion/CompanionPlace;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 102
    return-void
.end method
