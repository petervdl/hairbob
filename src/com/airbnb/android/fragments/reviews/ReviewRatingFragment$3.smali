.class synthetic Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$3;
.super Ljava/lang/Object;
.source "ReviewRatingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;
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
    .line 115
    invoke-static {}, Lcom/airbnb/android/models/Review$RatingType;->values()[Lcom/airbnb/android/models/Review$RatingType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$3;->$SwitchMap$com$airbnb$android$models$Review$RatingType:[I

    :try_start_9
    sget-object v0, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$3;->$SwitchMap$com$airbnb$android$models$Review$RatingType:[I

    sget-object v1, Lcom/airbnb/android/models/Review$RatingType;->Overall:Lcom/airbnb/android/models/Review$RatingType;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Review$RatingType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_71

    :goto_14
    :try_start_14
    sget-object v0, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$3;->$SwitchMap$com$airbnb$android$models$Review$RatingType:[I

    sget-object v1, Lcom/airbnb/android/models/Review$RatingType;->Accuracy:Lcom/airbnb/android/models/Review$RatingType;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Review$RatingType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_6f

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$3;->$SwitchMap$com$airbnb$android$models$Review$RatingType:[I

    sget-object v1, Lcom/airbnb/android/models/Review$RatingType;->Cleanliness:Lcom/airbnb/android/models/Review$RatingType;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Review$RatingType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_6d

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$3;->$SwitchMap$com$airbnb$android$models$Review$RatingType:[I

    sget-object v1, Lcom/airbnb/android/models/Review$RatingType;->Communication:Lcom/airbnb/android/models/Review$RatingType;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Review$RatingType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_6b

    :goto_35
    :try_start_35
    sget-object v0, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$3;->$SwitchMap$com$airbnb$android$models$Review$RatingType:[I

    sget-object v1, Lcom/airbnb/android/models/Review$RatingType;->HouseRuleObservance:Lcom/airbnb/android/models/Review$RatingType;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Review$RatingType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_69

    :goto_40
    :try_start_40
    sget-object v0, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$3;->$SwitchMap$com$airbnb$android$models$Review$RatingType:[I

    sget-object v1, Lcom/airbnb/android/models/Review$RatingType;->CheckIn:Lcom/airbnb/android/models/Review$RatingType;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Review$RatingType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_67

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$3;->$SwitchMap$com$airbnb$android$models$Review$RatingType:[I

    sget-object v1, Lcom/airbnb/android/models/Review$RatingType;->Location:Lcom/airbnb/android/models/Review$RatingType;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Review$RatingType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_65

    :goto_56
    :try_start_56
    sget-object v0, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$3;->$SwitchMap$com$airbnb$android$models$Review$RatingType:[I

    sget-object v1, Lcom/airbnb/android/models/Review$RatingType;->Value:Lcom/airbnb/android/models/Review$RatingType;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Review$RatingType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_63

    :goto_62
    return-void

    :catch_63
    move-exception v0

    goto :goto_62

    :catch_65
    move-exception v0

    goto :goto_56

    :catch_67
    move-exception v0

    goto :goto_4b

    :catch_69
    move-exception v0

    goto :goto_40

    :catch_6b
    move-exception v0

    goto :goto_35

    :catch_6d
    move-exception v0

    goto :goto_2a

    :catch_6f
    move-exception v0

    goto :goto_1f

    :catch_71
    move-exception v0

    goto :goto_14
.end method
