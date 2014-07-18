.class public Lcom/airbnb/android/events/ReviewUpdatedEvent;
.super Ljava/lang/Object;
.source "ReviewUpdatedEvent.java"


# instance fields
.field public review:Lcom/airbnb/android/models/Review;


# direct methods
.method public constructor <init>(Lcom/airbnb/android/models/Review;)V
    .registers 2
    .param p1, "review"    # Lcom/airbnb/android/models/Review;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/airbnb/android/events/ReviewUpdatedEvent;->review:Lcom/airbnb/android/models/Review;

    .line 11
    return-void
.end method
