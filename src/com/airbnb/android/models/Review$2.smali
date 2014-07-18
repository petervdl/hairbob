.class Lcom/airbnb/android/models/Review$2;
.super Ljava/util/ArrayList;
.source "Review.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/models/Review;->getRatingTypes()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/airbnb/android/models/Review$RatingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x66a4928b07869b79L


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/models/Review;


# direct methods
.method constructor <init>(Lcom/airbnb/android/models/Review;)V
    .registers 3

    .prologue
    .line 166
    iput-object p1, p0, Lcom/airbnb/android/models/Review$2;->this$0:Lcom/airbnb/android/models/Review;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    sget-object v0, Lcom/airbnb/android/models/Review$RatingType;->Cleanliness:Lcom/airbnb/android/models/Review$RatingType;

    invoke-virtual {p0, v0}, Lcom/airbnb/android/models/Review$2;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object v0, Lcom/airbnb/android/models/Review$RatingType;->Communication:Lcom/airbnb/android/models/Review$RatingType;

    invoke-virtual {p0, v0}, Lcom/airbnb/android/models/Review$2;->add(Ljava/lang/Object;)Z

    .line 171
    sget-object v0, Lcom/airbnb/android/models/Review$RatingType;->HouseRuleObservance:Lcom/airbnb/android/models/Review$RatingType;

    invoke-virtual {p0, v0}, Lcom/airbnb/android/models/Review$2;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v0, Lcom/airbnb/android/models/Review$RatingType;->Recommend:Lcom/airbnb/android/models/Review$RatingType;

    invoke-virtual {p0, v0}, Lcom/airbnb/android/models/Review$2;->add(Ljava/lang/Object;)Z

    .line 173
    return-void
.end method
