.class synthetic Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$1;
.super Ljava/lang/Object;
.source "BrowsableSectionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/BrowsableSectionsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$airbnb$android$adapters$BrowsableSectionsAdapter$BrowsableSection:[I

.field static final synthetic $SwitchMap$com$airbnb$android$adapters$BrowsableSectionsAdapter$BrowsableType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 120
    invoke-static {}, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;->values()[Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$1;->$SwitchMap$com$airbnb$android$adapters$BrowsableSectionsAdapter$BrowsableType:[I

    :try_start_9
    sget-object v0, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$1;->$SwitchMap$com$airbnb$android$adapters$BrowsableSectionsAdapter$BrowsableType:[I

    sget-object v1, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;->Recommendations:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_52

    :goto_14
    :try_start_14
    sget-object v0, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$1;->$SwitchMap$com$airbnb$android$adapters$BrowsableSectionsAdapter$BrowsableType:[I

    sget-object v1, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;->LMB:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_50

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$1;->$SwitchMap$com$airbnb$android$adapters$BrowsableSectionsAdapter$BrowsableType:[I

    sget-object v1, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;->Search:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_4e

    .line 95
    :goto_2a
    invoke-static {}, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;->values()[Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$1;->$SwitchMap$com$airbnb$android$adapters$BrowsableSectionsAdapter$BrowsableSection:[I

    :try_start_33
    sget-object v0, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$1;->$SwitchMap$com$airbnb$android$adapters$BrowsableSectionsAdapter$BrowsableSection:[I

    sget-object v1, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;->Map:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_4c

    :goto_3e
    :try_start_3e
    sget-object v0, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$1;->$SwitchMap$com$airbnb$android$adapters$BrowsableSectionsAdapter$BrowsableSection:[I

    sget-object v1, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;->Photo:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_4a

    :goto_49
    return-void

    :catch_4a
    move-exception v0

    goto :goto_49

    :catch_4c
    move-exception v0

    goto :goto_3e

    .line 120
    :catch_4e
    move-exception v0

    goto :goto_2a

    :catch_50
    move-exception v0

    goto :goto_1f

    :catch_52
    move-exception v0

    goto :goto_14
.end method
