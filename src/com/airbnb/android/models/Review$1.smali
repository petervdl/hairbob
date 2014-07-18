.class Lcom/airbnb/android/models/Review$1;
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
.field private static final serialVersionUID:J = -0x68156c5d5de68979L


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/models/Review;


# direct methods
.method constructor <init>(Lcom/airbnb/android/models/Review;)V
    .registers 3

    .prologue
    .line 152
    iput-object p1, p0, Lcom/airbnb/android/models/Review$1;->this$0:Lcom/airbnb/android/models/Review;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    sget-object v0, Lcom/airbnb/android/models/Review$RatingType;->Overall:Lcom/airbnb/android/models/Review$RatingType;

    invoke-virtual {p0, v0}, Lcom/airbnb/android/models/Review$1;->add(Ljava/lang/Object;)Z

    .line 156
    sget-object v0, Lcom/airbnb/android/models/Review$RatingType;->Accuracy:Lcom/airbnb/android/models/Review$RatingType;

    invoke-virtual {p0, v0}, Lcom/airbnb/android/models/Review$1;->add(Ljava/lang/Object;)Z

    .line 157
    sget-object v0, Lcom/airbnb/android/models/Review$RatingType;->Cleanliness:Lcom/airbnb/android/models/Review$RatingType;

    invoke-virtual {p0, v0}, Lcom/airbnb/android/models/Review$1;->add(Ljava/lang/Object;)Z

    .line 158
    sget-object v0, Lcom/airbnb/android/models/Review$RatingType;->CheckIn:Lcom/airbnb/android/models/Review$RatingType;

    invoke-virtual {p0, v0}, Lcom/airbnb/android/models/Review$1;->add(Ljava/lang/Object;)Z

    .line 159
    sget-object v0, Lcom/airbnb/android/models/Review$RatingType;->Communication:Lcom/airbnb/android/models/Review$RatingType;

    invoke-virtual {p0, v0}, Lcom/airbnb/android/models/Review$1;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v0, Lcom/airbnb/android/models/Review$RatingType;->Location:Lcom/airbnb/android/models/Review$RatingType;

    invoke-virtual {p0, v0}, Lcom/airbnb/android/models/Review$1;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v0, Lcom/airbnb/android/models/Review$RatingType;->Value:Lcom/airbnb/android/models/Review$RatingType;

    invoke-virtual {p0, v0}, Lcom/airbnb/android/models/Review$1;->add(Ljava/lang/Object;)Z

    .line 162
    sget-object v0, Lcom/airbnb/android/models/Review$RatingType;->Recommend:Lcom/airbnb/android/models/Review$RatingType;

    invoke-virtual {p0, v0}, Lcom/airbnb/android/models/Review$1;->add(Ljava/lang/Object;)Z

    .line 163
    return-void
.end method
