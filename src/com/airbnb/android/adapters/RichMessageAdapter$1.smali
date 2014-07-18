.class synthetic Lcom/airbnb/android/adapters/RichMessageAdapter$1;
.super Ljava/lang/Object;
.source "RichMessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/RichMessageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$airbnb$android$interfaces$RichMessage$MessageType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 57
    invoke-static {}, Lcom/airbnb/android/interfaces/RichMessage$MessageType;->values()[Lcom/airbnb/android/interfaces/RichMessage$MessageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/airbnb/android/adapters/RichMessageAdapter$1;->$SwitchMap$com$airbnb$android$interfaces$RichMessage$MessageType:[I

    :try_start_9
    sget-object v0, Lcom/airbnb/android/adapters/RichMessageAdapter$1;->$SwitchMap$com$airbnb$android$interfaces$RichMessage$MessageType:[I

    sget-object v1, Lcom/airbnb/android/interfaces/RichMessage$MessageType;->SENT_TEXT:Lcom/airbnb/android/interfaces/RichMessage$MessageType;

    invoke-virtual {v1}, Lcom/airbnb/android/interfaces/RichMessage$MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_56

    :goto_14
    :try_start_14
    sget-object v0, Lcom/airbnb/android/adapters/RichMessageAdapter$1;->$SwitchMap$com$airbnb$android$interfaces$RichMessage$MessageType:[I

    sget-object v1, Lcom/airbnb/android/interfaces/RichMessage$MessageType;->RECEIVED_TEXT:Lcom/airbnb/android/interfaces/RichMessage$MessageType;

    invoke-virtual {v1}, Lcom/airbnb/android/interfaces/RichMessage$MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_54

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/airbnb/android/adapters/RichMessageAdapter$1;->$SwitchMap$com$airbnb$android$interfaces$RichMessage$MessageType:[I

    sget-object v1, Lcom/airbnb/android/interfaces/RichMessage$MessageType;->COMPANION_RECEIVED_TEXT:Lcom/airbnb/android/interfaces/RichMessage$MessageType;

    invoke-virtual {v1}, Lcom/airbnb/android/interfaces/RichMessage$MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_52

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/airbnb/android/adapters/RichMessageAdapter$1;->$SwitchMap$com$airbnb$android$interfaces$RichMessage$MessageType:[I

    sget-object v1, Lcom/airbnb/android/interfaces/RichMessage$MessageType;->STATUS:Lcom/airbnb/android/interfaces/RichMessage$MessageType;

    invoke-virtual {v1}, Lcom/airbnb/android/interfaces/RichMessage$MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_50

    :goto_35
    :try_start_35
    sget-object v0, Lcom/airbnb/android/adapters/RichMessageAdapter$1;->$SwitchMap$com$airbnb$android$interfaces$RichMessage$MessageType:[I

    sget-object v1, Lcom/airbnb/android/interfaces/RichMessage$MessageType;->LC_MAP:Lcom/airbnb/android/interfaces/RichMessage$MessageType;

    invoke-virtual {v1}, Lcom/airbnb/android/interfaces/RichMessage$MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_4e

    :goto_40
    :try_start_40
    sget-object v0, Lcom/airbnb/android/adapters/RichMessageAdapter$1;->$SwitchMap$com$airbnb$android$interfaces$RichMessage$MessageType:[I

    sget-object v1, Lcom/airbnb/android/interfaces/RichMessage$MessageType;->LC_AGENT_PROGRESS:Lcom/airbnb/android/interfaces/RichMessage$MessageType;

    invoke-virtual {v1}, Lcom/airbnb/android/interfaces/RichMessage$MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_4c

    :goto_4b
    return-void

    :catch_4c
    move-exception v0

    goto :goto_4b

    :catch_4e
    move-exception v0

    goto :goto_40

    :catch_50
    move-exception v0

    goto :goto_35

    :catch_52
    move-exception v0

    goto :goto_2a

    :catch_54
    move-exception v0

    goto :goto_1f

    :catch_56
    move-exception v0

    goto :goto_14
.end method
