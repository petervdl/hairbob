.class synthetic Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$17;
.super Ljava/lang/Object;
.source "PostListManageListingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;
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
    .line 132
    invoke-static {}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->values()[Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$17;->$SwitchMap$com$airbnb$android$interfaces$ManageListingTransitions$ListingDetails:[I

    :try_start_9
    sget-object v0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$17;->$SwitchMap$com$airbnb$android$interfaces$ManageListingTransitions$ListingDetails:[I

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->Location:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    invoke-virtual {v1}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_a0

    :goto_14
    :try_start_14
    sget-object v0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$17;->$SwitchMap$com$airbnb$android$interfaces$ManageListingTransitions$ListingDetails:[I

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->Calendar:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    invoke-virtual {v1}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_9e

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$17;->$SwitchMap$com$airbnb$android$interfaces$ManageListingTransitions$ListingDetails:[I

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->Amenities:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    invoke-virtual {v1}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_9c

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$17;->$SwitchMap$com$airbnb$android$interfaces$ManageListingTransitions$ListingDetails:[I

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->RoomsAndBeds:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    invoke-virtual {v1}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_9a

    :goto_35
    :try_start_35
    sget-object v0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$17;->$SwitchMap$com$airbnb$android$interfaces$ManageListingTransitions$ListingDetails:[I

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->HouseManual:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    invoke-virtual {v1}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_98

    :goto_40
    :try_start_40
    sget-object v0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$17;->$SwitchMap$com$airbnb$android$interfaces$ManageListingTransitions$ListingDetails:[I

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->Terms:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    invoke-virtual {v1}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_96

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$17;->$SwitchMap$com$airbnb$android$interfaces$ManageListingTransitions$ListingDetails:[I

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->Details:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    invoke-virtual {v1}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_94

    .line 102
    :goto_56
    invoke-static {}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;->values()[Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$17;->$SwitchMap$com$airbnb$android$interfaces$ManageListingTransitions$ListingPricing:[I

    :try_start_5f
    sget-object v0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$17;->$SwitchMap$com$airbnb$android$interfaces$ManageListingTransitions$ListingPricing:[I

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;->BasePrice:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;

    invoke-virtual {v1}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_92

    :goto_6a
    :try_start_6a
    sget-object v0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$17;->$SwitchMap$com$airbnb$android$interfaces$ManageListingTransitions$ListingPricing:[I

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;->Currency:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;

    invoke-virtual {v1}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_90

    :goto_75
    :try_start_75
    sget-object v0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$17;->$SwitchMap$com$airbnb$android$interfaces$ManageListingTransitions$ListingPricing:[I

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;->LongTermPrices:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;

    invoke-virtual {v1}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_80
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_80} :catch_8e

    :goto_80
    :try_start_80
    sget-object v0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$17;->$SwitchMap$com$airbnb$android$interfaces$ManageListingTransitions$ListingPricing:[I

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;->AdditionalCharges:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;

    invoke-virtual {v1}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_8b} :catch_8c

    :goto_8b
    return-void

    :catch_8c
    move-exception v0

    goto :goto_8b

    :catch_8e
    move-exception v0

    goto :goto_80

    :catch_90
    move-exception v0

    goto :goto_75

    :catch_92
    move-exception v0

    goto :goto_6a

    .line 132
    :catch_94
    move-exception v0

    goto :goto_56

    :catch_96
    move-exception v0

    goto :goto_4b

    :catch_98
    move-exception v0

    goto :goto_40

    :catch_9a
    move-exception v0

    goto :goto_35

    :catch_9c
    move-exception v0

    goto :goto_2a

    :catch_9e
    move-exception v0

    goto :goto_1f

    :catch_a0
    move-exception v0

    goto/16 :goto_14
.end method
