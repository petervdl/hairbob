.class public abstract Lcom/airbnb/android/requests/AirRequestFactory;
.super Ljava/lang/Object;
.source "AirRequestFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/requests/AirRequestFactory$Provider;,
        Lcom/airbnb/android/requests/AirRequestFactory$Consumer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    .local p0, "this":Lcom/airbnb/android/requests/AirRequestFactory;, "Lcom/airbnb/android/requests/AirRequestFactory<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public abstract getNextOffset(ILcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/AirbnbRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/airbnb/android/requests/RequestListener",
            "<TT;>;)TT;"
        }
    .end annotation
.end method
