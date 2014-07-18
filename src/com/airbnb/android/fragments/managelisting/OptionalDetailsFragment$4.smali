.class synthetic Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment$4;
.super Ljava/lang/Object;
.source "OptionalDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$airbnb$android$interfaces$ManageListingTransitions$ListingDetails:[I

.field static final synthetic $SwitchMap$com$airbnb$android$interfaces$ManageListingTransitions$ListingPricing:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 75
    invoke-static {}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->values()[Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment$4;->$SwitchMap$com$airbnb$android$interfaces$ManageListingTransitions$ListingDetails:[I

    :try_start_9
    sget-object v0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment$4;->$SwitchMap$com$airbnb$android$interfaces$ManageListingTransitions$ListingDetails:[I

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->Details:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    invoke-virtual {v1}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_93

    :goto_14
    :try_start_14
    sget-object v0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment$4;->$SwitchMap$com$airbnb$android$interfaces$ManageListingTransitions$ListingDetails:[I

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->Location:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    invoke-virtual {v1}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_91

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment$4;->$SwitchMap$com$airbnb$android$interfaces$ManageListingTransitions$ListingDetails:[I

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->Amenities:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    invoke-virtual {v1}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_8f

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment$4;->$SwitchMap$com$airbnb$android$interfaces$ManageListingTransitions$ListingDetails:[I

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->RoomsAndBeds:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    invoke-virtual {v1}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_8d

    :goto_35
    :try_start_35
    sget-object v0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment$4;->$SwitchMap$com$airbnb$android$interfaces$ManageListingTransitions$ListingDetails:[I

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->HouseManual:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    invoke-virtual {v1}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_8b

    :goto_40
    :try_start_40
    sget-object v0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment$4;->$SwitchMap$com$airbnb$android$interfaces$ManageListingTransitions$ListingDetails:[I

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->Terms:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    invoke-virtual {v1}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_89

    .line 44
    :goto_4b
    invoke-static {}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;->values()[Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment$4;->$SwitchMap$com$airbnb$android$interfaces$ManageListingTransitions$ListingPricing:[I

    :try_start_54
    sget-object v0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment$4;->$SwitchMap$com$airbnb$android$interfaces$ManageListingTransitions$ListingPricing:[I

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;->BasePrice:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;

    invoke-virtual {v1}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_87

    :goto_5f
    :try_start_5f
    sget-object v0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment$4;->$SwitchMap$com$airbnb$android$interfaces$ManageListingTransitions$ListingPricing:[I

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;->Currency:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;

    invoke-virtual {v1}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_85

    :goto_6a
    :try_start_6a
    sget-object v0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment$4;->$SwitchMap$com$airbnb$android$interfaces$ManageListingTransitions$ListingPricing:[I

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;->LongTermPrices:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;

    invoke-virtual {v1}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_83

    :goto_75
    :try_start_75
    sget-object v0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment$4;->$SwitchMap$com$airbnb$android$interfaces$ManageListingTransitions$ListingPricing:[I

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;->AdditionalCharges:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;

    invoke-virtual {v1}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_80
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_80} :catch_81

    :goto_80
    return-void

    :catch_81
    move-exception v0

    goto :goto_80

    :catch_83
    move-exception v0

    goto :goto_75

    :catch_85
    move-exception v0

    goto :goto_6a

    :catch_87
    move-exception v0

    goto :goto_5f

    .line 75
    :catch_89
    move-exception v0

    goto :goto_4b

    :catch_8b
    move-exception v0

    goto :goto_40

    :catch_8d
    move-exception v0

    goto :goto_35

    :catch_8f
    move-exception v0

    goto :goto_2a

    :catch_91
    move-exception v0

    goto :goto_1f

    :catch_93
    move-exception v0

    goto :goto_14
.end method
