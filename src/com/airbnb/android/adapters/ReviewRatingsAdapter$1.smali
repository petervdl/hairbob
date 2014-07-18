.class synthetic Lcom/airbnb/android/adapters/ReviewRatingsAdapter$1;
.super Ljava/lang/Object;
.source "ReviewRatingsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/ReviewRatingsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$airbnb$android$models$Review$RatingType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 40
    invoke-static {}, Lcom/airbnb/android/models/Review$RatingType;->values()[Lcom/airbnb/android/models/Review$RatingType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/airbnb/android/adapters/ReviewRatingsAdapter$1;->$SwitchMap$com$airbnb$android$models$Review$RatingType:[I

    :try_start_9
    sget-object v0, Lcom/airbnb/android/adapters/ReviewRatingsAdapter$1;->$SwitchMap$com$airbnb$android$models$Review$RatingType:[I

    sget-object v1, Lcom/airbnb/android/models/Review$RatingType;->Recommend:Lcom/airbnb/android/models/Review$RatingType;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Review$RatingType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    goto :goto_14
.end method
