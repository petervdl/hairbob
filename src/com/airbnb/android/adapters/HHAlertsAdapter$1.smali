.class synthetic Lcom/airbnb/android/adapters/HHAlertsAdapter$1;
.super Ljava/lang/Object;
.source "HHAlertsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/HHAlertsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$airbnb$android$models$Alert$AlertType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 123
    invoke-static {}, Lcom/airbnb/android/models/Alert$AlertType;->values()[Lcom/airbnb/android/models/Alert$AlertType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/airbnb/android/adapters/HHAlertsAdapter$1;->$SwitchMap$com$airbnb$android$models$Alert$AlertType:[I

    :try_start_9
    sget-object v0, Lcom/airbnb/android/adapters/HHAlertsAdapter$1;->$SwitchMap$com$airbnb$android$models$Alert$AlertType:[I

    sget-object v1, Lcom/airbnb/android/models/Alert$AlertType;->GroupsGeneric:Lcom/airbnb/android/models/Alert$AlertType;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Alert$AlertType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_aa

    :goto_14
    :try_start_14
    sget-object v0, Lcom/airbnb/android/adapters/HHAlertsAdapter$1;->$SwitchMap$com$airbnb$android$models$Alert$AlertType:[I

    sget-object v1, Lcom/airbnb/android/models/Alert$AlertType;->GroupsContent:Lcom/airbnb/android/models/Alert$AlertType;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Alert$AlertType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_a7

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/airbnb/android/adapters/HHAlertsAdapter$1;->$SwitchMap$com$airbnb$android$models$Alert$AlertType:[I

    sget-object v1, Lcom/airbnb/android/models/Alert$AlertType;->GroupsGroup:Lcom/airbnb/android/models/Alert$AlertType;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Alert$AlertType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_a5

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/airbnb/android/adapters/HHAlertsAdapter$1;->$SwitchMap$com$airbnb$android$models$Alert$AlertType:[I

    sget-object v1, Lcom/airbnb/android/models/Alert$AlertType;->GroupsMeetup:Lcom/airbnb/android/models/Alert$AlertType;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Alert$AlertType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_a3

    :goto_35
    :try_start_35
    sget-object v0, Lcom/airbnb/android/adapters/HHAlertsAdapter$1;->$SwitchMap$com$airbnb$android$models$Alert$AlertType:[I

    sget-object v1, Lcom/airbnb/android/models/Alert$AlertType;->Webview:Lcom/airbnb/android/models/Alert$AlertType;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Alert$AlertType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_a1

    :goto_40
    :try_start_40
    sget-object v0, Lcom/airbnb/android/adapters/HHAlertsAdapter$1;->$SwitchMap$com$airbnb$android$models$Alert$AlertType:[I

    sget-object v1, Lcom/airbnb/android/models/Alert$AlertType;->Hospitality:Lcom/airbnb/android/models/Alert$AlertType;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Alert$AlertType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_9f

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/airbnb/android/adapters/HHAlertsAdapter$1;->$SwitchMap$com$airbnb$android$models$Alert$AlertType:[I

    sget-object v1, Lcom/airbnb/android/models/Alert$AlertType;->AddPayoutInfo:Lcom/airbnb/android/models/Alert$AlertType;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Alert$AlertType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_9d

    :goto_56
    :try_start_56
    sget-object v0, Lcom/airbnb/android/adapters/HHAlertsAdapter$1;->$SwitchMap$com$airbnb$android$models$Alert$AlertType:[I

    sget-object v1, Lcom/airbnb/android/models/Alert$AlertType;->LeaveReviews:Lcom/airbnb/android/models/Alert$AlertType;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Alert$AlertType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_9b

    :goto_62
    :try_start_62
    sget-object v0, Lcom/airbnb/android/adapters/HHAlertsAdapter$1;->$SwitchMap$com$airbnb$android$models$Alert$AlertType:[I

    sget-object v1, Lcom/airbnb/android/models/Alert$AlertType;->TryInstantBook:Lcom/airbnb/android/models/Alert$AlertType;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Alert$AlertType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_99

    :goto_6e
    :try_start_6e
    sget-object v0, Lcom/airbnb/android/adapters/HHAlertsAdapter$1;->$SwitchMap$com$airbnb$android$models$Alert$AlertType:[I

    sget-object v1, Lcom/airbnb/android/models/Alert$AlertType;->FriendlySuspended:Lcom/airbnb/android/models/Alert$AlertType;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Alert$AlertType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_97

    :goto_7a
    :try_start_7a
    sget-object v0, Lcom/airbnb/android/adapters/HHAlertsAdapter$1;->$SwitchMap$com$airbnb$android$models$Alert$AlertType:[I

    sget-object v1, Lcom/airbnb/android/models/Alert$AlertType;->Inquiry:Lcom/airbnb/android/models/Alert$AlertType;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Alert$AlertType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_86} :catch_95

    :goto_86
    :try_start_86
    sget-object v0, Lcom/airbnb/android/adapters/HHAlertsAdapter$1;->$SwitchMap$com$airbnb$android$models$Alert$AlertType:[I

    sget-object v1, Lcom/airbnb/android/models/Alert$AlertType;->ReservationRequest:Lcom/airbnb/android/models/Alert$AlertType;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Alert$AlertType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_92} :catch_93

    :goto_92
    return-void

    :catch_93
    move-exception v0

    goto :goto_92

    :catch_95
    move-exception v0

    goto :goto_86

    :catch_97
    move-exception v0

    goto :goto_7a

    :catch_99
    move-exception v0

    goto :goto_6e

    :catch_9b
    move-exception v0

    goto :goto_62

    :catch_9d
    move-exception v0

    goto :goto_56

    :catch_9f
    move-exception v0

    goto :goto_4b

    :catch_a1
    move-exception v0

    goto :goto_40

    :catch_a3
    move-exception v0

    goto :goto_35

    :catch_a5
    move-exception v0

    goto :goto_2a

    :catch_a7
    move-exception v0

    goto/16 :goto_1f

    :catch_aa
    move-exception v0

    goto/16 :goto_14
.end method
