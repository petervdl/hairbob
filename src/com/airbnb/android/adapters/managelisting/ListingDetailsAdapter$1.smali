.class synthetic Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter$1;
.super Ljava/lang/Object;
.source "ListingDetailsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$airbnb$android$interfaces$ManageListingTransitions$ListingDetails:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 56
    invoke-static {}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->values()[Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter$1;->$SwitchMap$com$airbnb$android$interfaces$ManageListingTransitions$ListingDetails:[I

    :try_start_9
    sget-object v0, Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter$1;->$SwitchMap$com$airbnb$android$interfaces$ManageListingTransitions$ListingDetails:[I

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->Location:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    invoke-virtual {v1}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_63

    :goto_14
    :try_start_14
    sget-object v0, Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter$1;->$SwitchMap$com$airbnb$android$interfaces$ManageListingTransitions$ListingDetails:[I

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->Amenities:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    invoke-virtual {v1}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_61

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter$1;->$SwitchMap$com$airbnb$android$interfaces$ManageListingTransitions$ListingDetails:[I

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->Details:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    invoke-virtual {v1}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_5f

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter$1;->$SwitchMap$com$airbnb$android$interfaces$ManageListingTransitions$ListingDetails:[I

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->Calendar:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    invoke-virtual {v1}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_5d

    :goto_35
    :try_start_35
    sget-object v0, Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter$1;->$SwitchMap$com$airbnb$android$interfaces$ManageListingTransitions$ListingDetails:[I

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->HouseManual:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    invoke-virtual {v1}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_5b

    :goto_40
    :try_start_40
    sget-object v0, Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter$1;->$SwitchMap$com$airbnb$android$interfaces$ManageListingTransitions$ListingDetails:[I

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->RoomsAndBeds:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    invoke-virtual {v1}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_59

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter$1;->$SwitchMap$com$airbnb$android$interfaces$ManageListingTransitions$ListingDetails:[I

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->Terms:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    invoke-virtual {v1}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_57

    :goto_56
    return-void

    :catch_57
    move-exception v0

    goto :goto_56

    :catch_59
    move-exception v0

    goto :goto_4b

    :catch_5b
    move-exception v0

    goto :goto_40

    :catch_5d
    move-exception v0

    goto :goto_35

    :catch_5f
    move-exception v0

    goto :goto_2a

    :catch_61
    move-exception v0

    goto :goto_1f

    :catch_63
    move-exception v0

    goto :goto_14
.end method
