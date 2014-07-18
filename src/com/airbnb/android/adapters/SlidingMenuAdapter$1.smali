.class synthetic Lcom/airbnb/android/adapters/SlidingMenuAdapter$1;
.super Ljava/lang/Object;
.source "SlidingMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/SlidingMenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$airbnb$android$adapters$SlidingMenuAdapter$SlidingMenuItem:[I

.field static final synthetic $SwitchMap$com$airbnb$android$adapters$SlidingMenuAdapter$SlidingMenuListTypes:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 349
    invoke-static {}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->values()[Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/airbnb/android/adapters/SlidingMenuAdapter$1;->$SwitchMap$com$airbnb$android$adapters$SlidingMenuAdapter$SlidingMenuItem:[I

    :try_start_9
    sget-object v0, Lcom/airbnb/android/adapters/SlidingMenuAdapter$1;->$SwitchMap$com$airbnb$android$adapters$SlidingMenuAdapter$SlidingMenuItem:[I

    sget-object v1, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Inbox:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_6c

    :goto_14
    :try_start_14
    sget-object v0, Lcom/airbnb/android/adapters/SlidingMenuAdapter$1;->$SwitchMap$com$airbnb$android$adapters$SlidingMenuAdapter$SlidingMenuItem:[I

    sget-object v1, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Groups:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_6a

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/airbnb/android/adapters/SlidingMenuAdapter$1;->$SwitchMap$com$airbnb$android$adapters$SlidingMenuAdapter$SlidingMenuItem:[I

    sget-object v1, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->HostHome:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_68

    .line 254
    :goto_2a
    invoke-static {}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuListTypes;->values()[Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuListTypes;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/airbnb/android/adapters/SlidingMenuAdapter$1;->$SwitchMap$com$airbnb$android$adapters$SlidingMenuAdapter$SlidingMenuListTypes:[I

    :try_start_33
    sget-object v0, Lcom/airbnb/android/adapters/SlidingMenuAdapter$1;->$SwitchMap$com$airbnb$android$adapters$SlidingMenuAdapter$SlidingMenuListTypes:[I

    sget-object v1, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuListTypes;->Item:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuListTypes;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuListTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_66

    :goto_3e
    :try_start_3e
    sget-object v0, Lcom/airbnb/android/adapters/SlidingMenuAdapter$1;->$SwitchMap$com$airbnb$android$adapters$SlidingMenuAdapter$SlidingMenuListTypes:[I

    sget-object v1, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuListTypes;->Header:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuListTypes;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuListTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_64

    :goto_49
    :try_start_49
    sget-object v0, Lcom/airbnb/android/adapters/SlidingMenuAdapter$1;->$SwitchMap$com$airbnb$android$adapters$SlidingMenuAdapter$SlidingMenuListTypes:[I

    sget-object v1, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuListTypes;->BottomPadding:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuListTypes;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuListTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_62

    :goto_54
    :try_start_54
    sget-object v0, Lcom/airbnb/android/adapters/SlidingMenuAdapter$1;->$SwitchMap$com$airbnb$android$adapters$SlidingMenuAdapter$SlidingMenuListTypes:[I

    sget-object v1, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuListTypes;->SectionPadding:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuListTypes;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuListTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_60

    :goto_5f
    return-void

    :catch_60
    move-exception v0

    goto :goto_5f

    :catch_62
    move-exception v0

    goto :goto_54

    :catch_64
    move-exception v0

    goto :goto_49

    :catch_66
    move-exception v0

    goto :goto_3e

    .line 349
    :catch_68
    move-exception v0

    goto :goto_2a

    :catch_6a
    move-exception v0

    goto :goto_1f

    :catch_6c
    move-exception v0

    goto :goto_14
.end method
