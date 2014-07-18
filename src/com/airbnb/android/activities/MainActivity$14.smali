.class synthetic Lcom/airbnb/android/activities/MainActivity$14;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/activities/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$airbnb$android$adapters$SlidingMenuAdapter$SlidingMenuItem:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 1281
    invoke-static {}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->values()[Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/airbnb/android/activities/MainActivity$14;->$SwitchMap$com$airbnb$android$adapters$SlidingMenuAdapter$SlidingMenuItem:[I

    :try_start_9
    sget-object v0, Lcom/airbnb/android/activities/MainActivity$14;->$SwitchMap$com$airbnb$android$adapters$SlidingMenuAdapter$SlidingMenuItem:[I

    sget-object v1, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->YourTrips:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_f5

    :goto_14
    :try_start_14
    sget-object v0, Lcom/airbnb/android/activities/MainActivity$14;->$SwitchMap$com$airbnb$android$adapters$SlidingMenuAdapter$SlidingMenuItem:[I

    sget-object v1, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->ListYourSpace:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_f2

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/airbnb/android/activities/MainActivity$14;->$SwitchMap$com$airbnb$android$adapters$SlidingMenuAdapter$SlidingMenuItem:[I

    sget-object v1, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->HowToHost:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_ef

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/airbnb/android/activities/MainActivity$14;->$SwitchMap$com$airbnb$android$adapters$SlidingMenuAdapter$SlidingMenuItem:[I

    sget-object v1, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->HowItWorks:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_ec

    :goto_35
    :try_start_35
    sget-object v0, Lcom/airbnb/android/activities/MainActivity$14;->$SwitchMap$com$airbnb$android$adapters$SlidingMenuAdapter$SlidingMenuItem:[I

    sget-object v1, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Groups:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_e9

    :goto_40
    :try_start_40
    sget-object v0, Lcom/airbnb/android/activities/MainActivity$14;->$SwitchMap$com$airbnb$android$adapters$SlidingMenuAdapter$SlidingMenuItem:[I

    sget-object v1, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Listings:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_e6

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/airbnb/android/activities/MainActivity$14;->$SwitchMap$com$airbnb$android$adapters$SlidingMenuAdapter$SlidingMenuItem:[I

    sget-object v1, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Discover:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_e3

    :goto_56
    :try_start_56
    sget-object v0, Lcom/airbnb/android/activities/MainActivity$14;->$SwitchMap$com$airbnb$android$adapters$SlidingMenuAdapter$SlidingMenuItem:[I

    sget-object v1, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Search:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_e1

    :goto_62
    :try_start_62
    sget-object v0, Lcom/airbnb/android/activities/MainActivity$14;->$SwitchMap$com$airbnb$android$adapters$SlidingMenuAdapter$SlidingMenuItem:[I

    sget-object v1, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Inbox:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_df

    :goto_6e
    :try_start_6e
    sget-object v0, Lcom/airbnb/android/activities/MainActivity$14;->$SwitchMap$com$airbnb$android$adapters$SlidingMenuAdapter$SlidingMenuItem:[I

    sget-object v1, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Hospitality:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_dd

    :goto_7a
    :try_start_7a
    sget-object v0, Lcom/airbnb/android/activities/MainActivity$14;->$SwitchMap$com$airbnb$android$adapters$SlidingMenuAdapter$SlidingMenuItem:[I

    sget-object v1, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Help:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_86} :catch_db

    :goto_86
    :try_start_86
    sget-object v0, Lcom/airbnb/android/activities/MainActivity$14;->$SwitchMap$com$airbnb$android$adapters$SlidingMenuAdapter$SlidingMenuItem:[I

    sget-object v1, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->HostHome:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_92} :catch_d9

    :goto_92
    :try_start_92
    sget-object v0, Lcom/airbnb/android/activities/MainActivity$14;->$SwitchMap$com$airbnb$android$adapters$SlidingMenuAdapter$SlidingMenuItem:[I

    sget-object v1, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Calendar:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_9e} :catch_d7

    :goto_9e
    :try_start_9e
    sget-object v0, Lcom/airbnb/android/activities/MainActivity$14;->$SwitchMap$com$airbnb$android$adapters$SlidingMenuAdapter$SlidingMenuItem:[I

    sget-object v1, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->WishLists:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e .. :try_end_aa} :catch_d5

    :goto_aa
    :try_start_aa
    sget-object v0, Lcom/airbnb/android/activities/MainActivity$14;->$SwitchMap$com$airbnb$android$adapters$SlidingMenuAdapter$SlidingMenuItem:[I

    sget-object v1, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Account:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b6} :catch_d3

    :goto_b6
    :try_start_b6
    sget-object v0, Lcom/airbnb/android/activities/MainActivity$14;->$SwitchMap$com$airbnb$android$adapters$SlidingMenuAdapter$SlidingMenuItem:[I

    sget-object v1, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->SignIn:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_c2} :catch_d1

    :goto_c2
    :try_start_c2
    sget-object v0, Lcom/airbnb/android/activities/MainActivity$14;->$SwitchMap$com$airbnb$android$adapters$SlidingMenuAdapter$SlidingMenuItem:[I

    sget-object v1, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Settings:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_ce
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c2 .. :try_end_ce} :catch_cf

    :goto_ce
    return-void

    :catch_cf
    move-exception v0

    goto :goto_ce

    :catch_d1
    move-exception v0

    goto :goto_c2

    :catch_d3
    move-exception v0

    goto :goto_b6

    :catch_d5
    move-exception v0

    goto :goto_aa

    :catch_d7
    move-exception v0

    goto :goto_9e

    :catch_d9
    move-exception v0

    goto :goto_92

    :catch_db
    move-exception v0

    goto :goto_86

    :catch_dd
    move-exception v0

    goto :goto_7a

    :catch_df
    move-exception v0

    goto :goto_6e

    :catch_e1
    move-exception v0

    goto :goto_62

    :catch_e3
    move-exception v0

    goto/16 :goto_56

    :catch_e6
    move-exception v0

    goto/16 :goto_4b

    :catch_e9
    move-exception v0

    goto/16 :goto_40

    :catch_ec
    move-exception v0

    goto/16 :goto_35

    :catch_ef
    move-exception v0

    goto/16 :goto_2a

    :catch_f2
    move-exception v0

    goto/16 :goto_1f

    :catch_f5
    move-exception v0

    goto/16 :goto_14
.end method
